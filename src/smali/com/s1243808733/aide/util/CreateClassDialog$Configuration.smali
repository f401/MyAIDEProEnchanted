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

.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const-string p1, "pkg"

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    .line 617
    const-string p1, "clazz"

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    return-void
.end method
