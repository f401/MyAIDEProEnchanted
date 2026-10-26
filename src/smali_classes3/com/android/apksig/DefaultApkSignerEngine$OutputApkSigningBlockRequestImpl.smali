.class Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest;
.implements Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputApkSigningBlockRequestImpl"
.end annotation


# instance fields
.field private final mApkSigningBlock:[B

.field private volatile mDone:Z

.field private final mPaddingBeforeApkSigningBlock:I


# direct methods
.method private constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mApkSigningBlock:[B

    iput p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mPaddingBeforeApkSigningBlock:I

    return-void
.end method

.method synthetic constructor <init>([BILcom/android/apksig/DefaultApkSignerEngine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;-><init>([BI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->isDone()Z

    move-result v0

    return v0
.end method

.method private isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mDone:Z

    return v0
.end method


# virtual methods
.method public done()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mDone:Z

    return-void
.end method

.method public getApkSigningBlock()[B
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mApkSigningBlock:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPaddingSizeBeforeApkSigningBlock()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->mPaddingBeforeApkSigningBlock:I

    return v0
.end method
