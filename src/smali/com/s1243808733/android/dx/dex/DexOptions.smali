.class public final Lcom/s1243808733/android/dx/dex/DexOptions;
.super Ljava/lang/Object;
.source "DexOptions.java"


# static fields
.field public static final ALIGN_64BIT_REGS_SUPPORT:Z = true


# instance fields
.field public ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

.field public allowAllInterfaceMethodInvokes:Z

.field public final err:Ljava/io/PrintStream;

.field public forceJumbo:Z

.field public minSdkVersion:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    .line 42
    const/16 v0, 0xd

    iput v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->forceJumbo:Z

    .line 48
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    .line 42
    const/16 v0, 0xd

    iput v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->forceJumbo:Z

    .line 48
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    .line 58
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public apiIsSupported(I)Z
    .registers 3

    .line 77
    iget v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    if-lt v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public getMagic()Ljava/lang/String;
    .registers 2

    .line 66
    iget v0, p0, Lcom/s1243808733/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v0}, Lcom/s1243808733/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
