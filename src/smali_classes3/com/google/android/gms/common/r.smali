.class final Lcom/google/android/gms/common/r;
.super Ljava/lang/Object;


# static fields
.field static final j6:[Lcom/google/android/gms/common/o;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/o;

    new-instance v1, Lcom/google/android/gms/common/s;

    const-string v2, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"

    invoke-static {v2}, Lcom/google/android/gms/common/o;->j6(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/s;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/common/t;

    const-string v2, "0\u0082\u0004¨0\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"

    invoke-static {v2}, Lcom/google/android/gms/common/o;->j6(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/t;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/r;->j6:[Lcom/google/android/gms/common/o;

    return-void
.end method
