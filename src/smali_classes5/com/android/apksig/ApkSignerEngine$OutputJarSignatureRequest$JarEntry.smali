.class public Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JarEntry"
.end annotation


# instance fields
.field private final mData:[B

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->mName:Ljava/lang/String;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->mData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->mName:Ljava/lang/String;

    return-object v0
.end method
