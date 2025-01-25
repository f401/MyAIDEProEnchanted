.class Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;
.super Ljava/lang/Object;
.source "VerifyJar.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/VerifyJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferingOutputFilter"
.end annotation


# instance fields
.field private buffer:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/VerifyJar$1;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 205
    new-instance v0, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;->buffer:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;

    .line 206
    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;->buffer:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;

    if-eqz v0, :cond_7

    .line 216
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;->clear()V

    .line 218
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilter;->buffer:Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/VerifyJar$BufferingOutputFilterReader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
