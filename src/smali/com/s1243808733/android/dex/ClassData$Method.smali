.class public Lcom/s1243808733/android/dex/ClassData$Method;
.super Ljava/lang/Object;
.source "ClassData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Method"
.end annotation


# instance fields
.field private final accessFlags:I

.field private final codeOffset:I

.field private final methodIndex:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/s1243808733/android/dex/ClassData$Method;->methodIndex:I

    .line 88
    iput p2, p0, Lcom/s1243808733/android/dex/ClassData$Method;->accessFlags:I

    .line 89
    iput p3, p0, Lcom/s1243808733/android/dex/ClassData$Method;->codeOffset:I

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/s1243808733/android/dex/ClassData$Method;->accessFlags:I

    return v0
.end method

.method public getCodeOffset()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/s1243808733/android/dex/ClassData$Method;->codeOffset:I

    return v0
.end method

.method public getMethodIndex()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/s1243808733/android/dex/ClassData$Method;->methodIndex:I

    return v0
.end method
