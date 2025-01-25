.class public Lcom/s1243808733/aide/util/FActivityInfo;
.super Ljava/lang/Object;
.source "FActivityInfo.java"


# instance fields
.field public isMain:Z

.field public lable:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public theme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->lable:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->theme:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->lable:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->theme:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    .line 11
    iput-object p1, p0, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/util/FActivityInfo;->isMain:Z

    .line 19
    iput-object p1, p0, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/s1243808733/aide/util/FActivityInfo;->lable:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/s1243808733/aide/util/FActivityInfo;->theme:Ljava/lang/String;

    return-void
.end method
