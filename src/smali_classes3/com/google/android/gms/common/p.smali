.class final Lcom/google/android/gms/common/p;
.super Lcom/google/android/gms/common/o;


# instance fields
.field private final DW:[B


# direct methods
.method constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/o;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/common/p;->DW:[B

    return-void
.end method


# virtual methods
.method final v5()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/p;->DW:[B

    return-object v0
.end method
