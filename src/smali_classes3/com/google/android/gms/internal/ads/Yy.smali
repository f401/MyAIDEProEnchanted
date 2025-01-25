.class public interface abstract Lcom/google/android/gms/internal/ads/Yy;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract DW()Ljava/nio/ByteBuffer;
.end method

.method public abstract FH()I
.end method

.method public abstract Hw()Z
.end method

.method public abstract Zo()Z
.end method

.method public abstract flush()V
.end method

.method public abstract j6()I
.end method

.method public abstract j6(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract j6(III)Z
.end method

.method public abstract reset()V
.end method

.method public abstract v5()V
.end method
