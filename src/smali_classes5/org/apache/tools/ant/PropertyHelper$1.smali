.class Lorg/apache/tools/ant/PropertyHelper$1;
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

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-string v0, "toString:"

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper$1;->PREFIX:Ljava/lang/String;

    .line 186
    const-string v0, "toString:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/PropertyHelper$1;->PREFIX_LEN:I

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 189
    .line 190
    const-string v1, "toString:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 191
    invoke-virtual {p2}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/PropertyHelper$1;->PREFIX_LEN:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    :goto_1d
    if-nez v1, :cond_20

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_25
    move-object v1, v0

    goto :goto_1d
.end method
