.class Lcom/s1243808733/android/dx/dex/cf/CfTranslator$1;
.super Ljava/lang/Object;
.source "CfTranslator.java"

# interfaces
.implements Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/dex/cf/CfOptions;Lcom/s1243808733/android/dx/dex/DexOptions;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/RopMethod;Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
