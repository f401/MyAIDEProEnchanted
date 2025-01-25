.class public Lcom/termux/app/TermuxConstants$TERMUX_TASKER;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TERMUX_TASKER"
.end annotation


# static fields
.field public static TERMUX_TASKER_ACTIVITY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/app/TermuxConstants;->TERMUX_TASKER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".activities.TermuxTaskerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/app/TermuxConstants$TERMUX_TASKER;->TERMUX_TASKER_ACTIVITY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
