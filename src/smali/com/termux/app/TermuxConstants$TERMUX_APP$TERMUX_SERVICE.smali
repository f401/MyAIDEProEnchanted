.class public Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxConstants$TERMUX_APP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TERMUX_SERVICE"
.end annotation


# static fields
.field public static ACTION_SERVICE_EXECUTE:Ljava/lang/String;

.field public static ACTION_STOP_SERVICE:Ljava/lang/String;

.field public static ACTION_WAKE_LOCK:Ljava/lang/String;

.field public static ACTION_WAKE_UNLOCK:Ljava/lang/String;

.field public static EXTRA_ARGUMENTS:Ljava/lang/String;

.field public static EXTRA_BACKGROUND:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static EXTRA_BACKGROUND_CUSTOM_LOG_LEVEL:Ljava/lang/String;

.field public static EXTRA_COMMAND_DESCRIPTION:Ljava/lang/String;

.field public static EXTRA_COMMAND_HELP:Ljava/lang/String;

.field public static EXTRA_COMMAND_LABEL:Ljava/lang/String;

.field public static EXTRA_PENDING_INTENT:Ljava/lang/String;

.field public static EXTRA_PLUGIN_API_HELP:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_ERR:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_ERRMSG:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_EXIT_CODE:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_STDERR:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_STDERR_ORIGINAL_LENGTH:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT:Ljava/lang/String;

.field public static EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT_ORIGINAL_LENGTH:Ljava/lang/String;

.field public static EXTRA_RESULT_DIRECTORY:Ljava/lang/String;

.field public static EXTRA_RESULT_FILES_SUFFIX:Ljava/lang/String;

.field public static EXTRA_RESULT_FILE_BASENAME:Ljava/lang/String;

.field public static EXTRA_RESULT_FILE_ERROR_FORMAT:Ljava/lang/String;

.field public static EXTRA_RESULT_FILE_OUTPUT_FORMAT:Ljava/lang/String;

.field public static EXTRA_RESULT_SINGLE_FILE:Ljava/lang/String;

.field public static EXTRA_RUNNER:Ljava/lang/String;

.field public static EXTRA_SESSION_ACTION:Ljava/lang/String;

.field public static EXTRA_SHELL_CREATE_MODE:Ljava/lang/String;

.field public static EXTRA_SHELL_NAME:Ljava/lang/String;

.field public static EXTRA_STDIN:Ljava/lang/String;

.field public static EXTRA_WORKDIR:Ljava/lang/String;

.field public static MAX_VALUE_EXTRA_SESSION_ACTION:I

.field public static MIN_VALUE_EXTRA_SESSION_ACTION:I

.field public static URI_SCHEME_SERVICE_EXECUTE:Ljava/lang/String;

.field public static VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_DONT_OPEN_ACTIVITY:I

.field public static VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_OPEN_ACTIVITY:I

.field public static VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_DONT_OPEN_ACTIVITY:I

.field public static VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_OPEN_ACTIVITY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".service_stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->ACTION_STOP_SERVICE:Ljava/lang/String;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".service_wake_lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->ACTION_WAKE_LOCK:Ljava/lang/String;

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".service_wake_unlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->ACTION_WAKE_UNLOCK:Ljava/lang/String;

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".service_execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->ACTION_SERVICE_EXECUTE:Ljava/lang/String;

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->URI_SCHEME_SERVICE_EXECUTE:Ljava/lang/String;

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.arguments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_ARGUMENTS:Ljava/lang/String;

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.stdin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_STDIN:Ljava/lang/String;

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.cwd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_WORKDIR:Ljava/lang/String;

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_BACKGROUND:Ljava/lang/String;

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.runner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RUNNER:Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.background_custom_log_level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_BACKGROUND_CUSTOM_LOG_LEVEL:Ljava/lang/String;

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.session_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_SESSION_ACTION:Ljava/lang/String;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.shell_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_SHELL_NAME:Ljava/lang/String;

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.shell_create_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_SHELL_CREATE_MODE:Ljava/lang/String;

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.command_label"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_COMMAND_LABEL:Ljava/lang/String;

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.command_description"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_COMMAND_DESCRIPTION:Ljava/lang/String;

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.command_help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_COMMAND_HELP:Ljava/lang/String;

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.plugin_api_help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_API_HELP:Ljava/lang/String;

    .line 1036
    const-string v0, "pendingIntent"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_DIRECTORY:Ljava/lang/String;

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_single_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_SINGLE_FILE:Ljava/lang/String;

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_file_basename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_FILE_BASENAME:Ljava/lang/String;

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_file_output_format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_FILE_OUTPUT_FORMAT:Ljava/lang/String;

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_file_error_format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_FILE_ERROR_FORMAT:Ljava/lang/String;

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute.result_files_suffix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_RESULT_FILES_SUFFIX:Ljava/lang/String;

    .line 1066
    const/4 v0, 0x0

    sput v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_OPEN_ACTIVITY:I

    .line 1074
    const/4 v1, 0x1

    sput v1, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_OPEN_ACTIVITY:I

    .line 1083
    const/4 v1, 0x2

    sput v1, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_DONT_OPEN_ACTIVITY:I

    .line 1092
    const/4 v1, 0x3

    sput v1, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_DONT_OPEN_ACTIVITY:I

    .line 1095
    sput v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->MIN_VALUE_EXTRA_SESSION_ACTION:I

    .line 1098
    sput v1, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->MAX_VALUE_EXTRA_SESSION_ACTION:I

    .line 1104
    const-string v0, "result"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE:Ljava/lang/String;

    .line 1106
    const-string v0, "stdout"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT:Ljava/lang/String;

    .line 1108
    const-string v0, "stdout_original_length"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT_ORIGINAL_LENGTH:Ljava/lang/String;

    .line 1110
    const-string v0, "stderr"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_STDERR:Ljava/lang/String;

    .line 1112
    const-string v0, "stderr_original_length"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_STDERR_ORIGINAL_LENGTH:Ljava/lang/String;

    .line 1114
    const-string v0, "exitCode"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_EXIT_CODE:Ljava/lang/String;

    .line 1116
    const-string v0, "err"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_ERR:Ljava/lang/String;

    .line 1118
    const-string v0, "errmsg"

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;->EXTRA_PLUGIN_RESULT_BUNDLE_ERRMSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
