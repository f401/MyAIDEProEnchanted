.class public Lorg/apache/tools/ant/types/FileList$FileName;
.super Ljava/lang/Object;
.source "FileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/FileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileName"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/types/FileList$FileName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/apache/tools/ant/types/FileList$FileName;->name:Ljava/lang/String;

    .line 152
    return-void
.end method
