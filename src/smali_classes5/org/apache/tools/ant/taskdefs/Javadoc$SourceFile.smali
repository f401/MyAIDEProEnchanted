.class public Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->file:Ljava/io/File;

    .line 305
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$SourceFile;->file:Ljava/io/File;

    .line 314
    return-void
.end method
