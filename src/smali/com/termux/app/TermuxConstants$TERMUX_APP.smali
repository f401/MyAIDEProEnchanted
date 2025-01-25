.class public Lcom/termux/app/TermuxConstants$TERMUX_APP;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TERMUX_APP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxConstants$TERMUX_APP$RUN_COMMAND_SERVICE;,
        Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_ACTIVITY;,
        Lcom/termux/app/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;
    }
.end annotation


# static fields
.field public static APPS_DIR_PATH:Ljava/lang/String;

.field public static BUILD_CONFIG_CLASS_NAME:Ljava/lang/String;

.field public static FILE_SHARE_RECEIVER_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static FILE_VIEW_RECEIVER_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static RUN_COMMAND_SERVICE_NAME:Ljava/lang/String;

.field public static TERMUX_ACTIVITY_NAME:Ljava/lang/String;

.field public static TERMUX_AM_SOCKET_FILE_PATH:Ljava/lang/String;

.field public static TERMUX_SERVICE_NAME:Ljava/lang/String;

.field public static TERMUX_SETTINGS_ACTIVITY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_APPS_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->APPS_DIR_PATH:Ljava/lang/String;

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants$TERMUX_APP;->APPS_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/termux-am/am.sock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->TERMUX_AM_SOCKET_FILE_PATH:Ljava/lang/String;

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BuildConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->BUILD_CONFIG_CLASS_NAME:Ljava/lang/String;

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.api.file.FileShareReceiverActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->FILE_SHARE_RECEIVER_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.api.file.FileViewReceiverActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->FILE_VIEW_RECEIVER_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.TermuxActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->TERMUX_ACTIVITY_NAME:Ljava/lang/String;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.activities.SettingsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->TERMUX_SETTINGS_ACTIVITY_NAME:Ljava/lang/String;

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.TermuxService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->TERMUX_SERVICE_NAME:Ljava/lang/String;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".app.RunCommandService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_APP;->RUN_COMMAND_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
