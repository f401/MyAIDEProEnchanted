.class Lcom/s1243808733/aide/util/CreateClassDialog$Item;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field public addLayout:Z

.field public autoAdd:Z

.field public final createClass:Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;

.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;)V
    .registers 4

    .line 400
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    .line 402
    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->createClass:Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;Z)V
    .registers 5

    .line 394
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    .line 396
    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->createClass:Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;

    .line 397
    iput-boolean p4, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->autoAdd:Z

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;ZZ)V
    .registers 6

    .line 387
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    .line 389
    iput-object p3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->createClass:Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;

    .line 390
    iput-boolean p4, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->autoAdd:Z

    .line 391
    iput-boolean p5, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->addLayout:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$Item;->title:Ljava/lang/String;

    return-object v0
.end method
