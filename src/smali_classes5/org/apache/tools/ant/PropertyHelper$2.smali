.class Lorg/apache/tools/ant/PropertyHelper$2;
.super Ljava/lang/Object;
.source "PropertyHelper.java"

# interfaces
.implements Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/PropertyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private final PREFIX_LEN:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const-string v0, "ant.refid:"

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX:Ljava/lang/String;

    .line 239
    const-string v0, "ant.refid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX_LEN:I

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .registers 5

    .line 242
    const-string v0, "ant.refid:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 243
    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/PropertyHelper$2;->PREFIX_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    :goto_1c
    return-object v0

    .line 244
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
