.class Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Configuration"
.end annotation


# instance fields
.field public abstractModifier:Z

.field public addLayout:Z

.field public appPackageName:Ljava/lang/String;

.field public autoAdd:Z

.field public className:Ljava/lang/String;

.field public isAddTag:Z

.field public layoutName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 3

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    const-string v0, "pkg"

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    const-string v0, "clazz"

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Lcom/s1243808733/aide/util/CreateClassDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    return-object v0
.end method
