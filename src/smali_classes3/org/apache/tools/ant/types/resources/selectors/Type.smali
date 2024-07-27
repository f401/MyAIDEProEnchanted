.class public Lorg/apache/tools/ant/types/resources/selectors/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;
    }
.end annotation


# static fields
.field public static final ANY:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final ANY_ATTR:Ljava/lang/String; = "any"

.field public static final DIR:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final DIR_ATTR:Ljava/lang/String; = "dir"

.field public static final FILE:Lorg/apache/tools/ant/types/resources/selectors/Type;

.field private static final FILE_ATTR:Ljava/lang/String; = "file"


# instance fields
.field private type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "file"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->FILE:Lorg/apache/tools/ant/types/resources/selectors/Type;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "dir"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->DIR:Lorg/apache/tools/ant/types/resources/selectors/Type;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/types/resources/selectors/Type;

    new-instance v1, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    const-string v2, "any"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/selectors/Type;-><init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Type;->ANY:Lorg/apache/tools/ant/types/resources/selectors/Type;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    .line 86
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Type;->setType(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V

    .line 87
    return-void
.end method


# virtual methods
.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 5

    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;->getIndex()I

    move-result v1

    .line 107
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The type attribute is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Type;->type:Lorg/apache/tools/ant/types/resources/selectors/Type$FileDir;

    .line 95
    return-void
.end method
