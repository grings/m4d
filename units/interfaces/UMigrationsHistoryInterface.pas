{######################################################################################

                                      M4D Framework

Author: Edgar Borges Pav�o
Date of creation: 31/08/2017
Use licence: Free

######################################################################################}

unit UMigrationsHistoryInterface;

interface

uses
  UMigrationsHistoryItem, UMigrationsInterface, Generics.Collections;

type
  {$REGION 'IMigrationsHistory'}
    /// <Description>
    ///  Standard methods to handle migrations�s executions history.
    /// </Description>
  {$ENDREGION}
  IMigrationsHistory = interface
  ['{639BAD0D-0273-4EB2-B129-D9CB70B1B108}']
    {$REGION 'IMigrationExecutor.Clear'}
      /// <Description>
      ///  Clear the history info.
      /// </Description>
    {$ENDREGION}
    procedure Clear;
    {$REGION 'IMigrationsHistory.Load'}
      /// <Description>
      ///  Load all the history of migrations executions.
      /// </Description>
    {$ENDREGION}
    procedure Load;
    {$REGION 'IMigrationsHistory.UnLoad'}
      /// <Description>
      ///  Unload all the history of migrations executions.
      /// </Description>
    {$ENDREGION}
    procedure UnLoad;
    {$REGION 'IMigrationsHistory.Add'}
      /// <Description>
      ///  Add a execution history information.
      /// </Description>
      /// <InputParameters>
      ///  AItem - The history item that will be stored.
      /// </InputParameters>
    {$ENDREGION}
    procedure Add(AItem: TMigrationsHistoryItem);
    {$REGION 'IMigrationsHistory.Remove'}
      /// <Description>
      ///  Remove a execution history information.
      /// </Description>
      /// <InputParameters>
      ///  AItem - The history item that will be removed.
      /// </InputParameters>
    {$ENDREGION}
    procedure Remove(AMigrationSequence: Integer);
    {$REGION 'IMigrationsHistory.getHistory'}
      /// <Description>
      ///  Gets a list with informations of all migration�s executions.
      /// </Description>
      /// <OutputParameters>
      ///  Return - A list with all migrations.
      /// </OutputParameters>
      /// <Note>
      ///  Get all history os executions.
      /// </Note>
    {$ENDREGION}
    function getHistory: TList<TMigrationsHistoryItem>; overload;
    {$REGION 'IMigrationsHistory.getHistory'}
      /// <Description>
      ///  Gets a list with informations of migration�s executions.
      /// </Description>
      /// <InputParameters>
      ///  AStartMigrationSeq - The sequential value of the migration that will be
      ///  considered as the start migration.
      /// </InputParameters>
      /// <OutputParameters>
      ///  Return - A list with all migrations with the sequence value equal or gratter then the AStartMigrationSeq.
      /// </OutputParameters>
      /// <Note>
      ///  Only takes histories greater than or equal to the sequence inputted.
      /// </Note>
    {$ENDREGION}
    function getHistory(AStartMigrationSeq: Integer): TList<TMigrationsHistoryItem>; overload;
    {$REGION 'IMigrationsHistory.getHistory'}
      /// <Description>
      ///  Gets a list with informations of migration�s executions.
      /// </Description>
      /// <InputParameters>
      ///  AStartMigrationDateTime - The date time value of the migration that will be
      ///  considered as the start migration.
      /// </InputParameters>
      /// <OutputParameters>
      ///  Return - A list with all migrations with the date time value equal or gratter
      ///  then the AStartMigrationDateTime.
      /// </OutputParameters>
      /// <Note>
      ///  Only takes histories greater than or equal to the date time inputted.
      /// </Note>
    {$ENDREGION}
    function getHistory(AStartMigrationDateTime: TDateTime): TList<TMigrationsHistoryItem>; overload;
    {$REGION 'IMigrationsHistory.Save'}
      /// <Description>
      ///  Save all the history of migrations executions.
      /// </Description>
    {$ENDREGION}
    procedure Save;
    {$REGION 'IMigrationsHistory.LastMigration'}
      /// <Description>
      ///  Return the last migration executed.
      /// </Description>
      /// <OutputParameters>
      ///  Return - Last migration executed on the history list.
      /// </OutputParameters>
    {$ENDREGION}
    function LastMigration: TMigrationsHistoryItem;
  end;

implementation

end.