.class public Lorg/apache/tools/ant/util/PropertyOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PropertyOutputStream.java"


# instance fields
.field private project:Lorg/apache/tools/ant/Project;

.field private property:Ljava/lang/String;

.field private trim:Z


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .registers 4

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/util/PropertyOutputStream;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;Z)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->project:Lorg/apache/tools/ant/Project;

    .line 56
    iput-object p2, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->property:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->trim:Z

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->property:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 66
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/util/PropertyOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 67
    iget-object v1, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->project:Lorg/apache/tools/ant/Project;

    iget-object v2, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->property:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/tools/ant/util/PropertyOutputStream;->trim:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_20
    return-void
.end method
