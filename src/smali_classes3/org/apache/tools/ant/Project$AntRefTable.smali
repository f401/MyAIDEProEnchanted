.class Lorg/apache/tools/ant/Project$AntRefTable;
.super Ljava/util/Hashtable;
.source "Project.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AntRefTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2415
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 2416
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/Project$AntRefTable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 2411
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->getReal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getReal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 2426
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2442
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->getReal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2443
    instance-of v1, v0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_0

    .line 2445
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 2446
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->maybeConfigure()V

    .line 2447
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getRealThing()Ljava/lang/Object;

    move-result-object v0

    .line 2449
    :cond_0
    return-object v0
.end method
