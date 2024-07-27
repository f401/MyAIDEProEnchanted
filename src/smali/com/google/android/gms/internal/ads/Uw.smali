.class final Lcom/google/android/gms/internal/ads/Uw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qw;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Nw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Nw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uw;->j6:Lcom/google/android/gms/internal/ads/Nw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Nw;Lcom/google/android/gms/internal/ads/Pw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Uw;-><init>(Lcom/google/android/gms/internal/ads/Nw;)V

    return-void
.end method


# virtual methods
.method public final j6([B[B)V
    .registers 17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uw;->j6:Lcom/google/android/gms/internal/ads/Nw;

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/Nw;->sg:I

    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->CU:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->CU:I

    xor-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->qU:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->qU:I

    or-int v6, v4, v5

    iput v6, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/Nw;->Nh:I

    xor-int/lit8 v8, v7, -0x1

    and-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    xor-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/Nw;->fP:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    xor-int/2addr v8, v6

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->J0:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    xor-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int/2addr v6, v8

    iput v6, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/Nw;->PH:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    and-int/2addr v8, v6

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    xor-int v8, v3, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    and-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    xor-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->fN:I

    and-int v9, v6, v8

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/Nw;->hz:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    or-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->gy:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    or-int v9, v4, v3

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v9, v1

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v6

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v10, v8, -0x1

    and-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v3

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v9, v2

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v7

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    or-int v9, v4, v3

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->nw:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v7

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    xor-int/lit8 v10, v1, -0x1

    and-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->ko:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->vy:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->TI:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    or-int v11, v9, v10

    iput v11, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/Nw;->b:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    xor-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/Nw;->cn:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    xor-int/2addr v12, v13

    iput v12, v0, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    and-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v9, v11

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/Nw;->br:I

    xor-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->br:I

    xor-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Ej:I

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v9, v1

    iput v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    or-int v3, v4, v1

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    xor-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->GT:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    and-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    and-int/2addr v3, v7

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    and-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    or-int/2addr v3, v8

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->pn:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    xor-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->iK:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    xor-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    xor-int v3, v1, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->b1:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    xor-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->QX:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    xor-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->e3:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    xor-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->S4:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    xor-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    xor-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    xor-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    and-int/2addr v1, v7

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    xor-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->aq:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    xor-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->w9:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    xor-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->ye:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    xor-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->iW:I

    const/4 v3, 0x0

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/4 v3, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x2

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x3

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->sv:I

    const/4 v3, 0x4

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/4 v3, 0x5

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x6

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x7

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->oa:I

    const/16 v3, 0x8

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x9

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xa

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xb

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->gG:I

    const/16 v3, 0xc

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xd

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xe

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xf

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Zo:I

    const/16 v3, 0x10

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x11

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x12

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x13

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->v5:I

    const/16 v3, 0x14

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x15

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x16

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x17

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->gn:I

    const/16 v3, 0x18

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x19

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x1a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x1b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    const/16 v1, 0x1c

    int-to-byte v3, v6

    aput-byte v3, p2, v1

    const/16 v1, 0x1d

    ushr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    const/16 v1, 0x1e

    ushr-int/lit8 v3, v6, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    const/16 v1, 0x1f

    const/high16 v3, -0x1000000

    and-int/2addr v3, v6

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->tp:I

    const/16 v3, 0x20

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x21

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x22

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x23

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->ir:I

    const/16 v3, 0x24

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x25

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x26

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x27

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->E4:I

    const/16 v3, 0x28

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x29

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x2a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x2b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->EQ:I

    const/16 v3, 0x2c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x2d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x2e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x2f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Z1:I

    const/16 v3, 0x30

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x31

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x32

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x33

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->GK:I

    const/16 v3, 0x34

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x35

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x36

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x37

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->e9:I

    const/16 v3, 0x38

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x39

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x3a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x3b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Ws:I

    const/16 v3, 0x3c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x3d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x3e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x3f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Jm:I

    const/16 v3, 0x40

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x41

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x42

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x43

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->IS:I

    const/16 v3, 0x44

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x45

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x46

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x47

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->jO:I

    const/16 v3, 0x48

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x49

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x4a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x4b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->ys:I

    const/16 v3, 0x4c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x4d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x4e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x4f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->a8:I

    const/16 v3, 0x50

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x51

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x52

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x53

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->U2:I

    const/16 v3, 0x54

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x55

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x56

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x57

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->rN:I

    const/16 v3, 0x58

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x59

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x5a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x5b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->lg:I

    const/16 v3, 0x5c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x5d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x5e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x5f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->dW:I

    const/16 v3, 0x60

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x61

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x62

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x63

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Od:I

    const/16 v3, 0x64

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x65

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x66

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x67

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->q7:I

    const/16 v3, 0x68

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x69

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x6a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x6b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->gW:I

    const/16 v3, 0x6c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x6d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x6e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x6f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->P8:I

    const/16 v3, 0x70

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x71

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x72

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x73

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->ca:I

    const/16 v3, 0x74

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x75

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x76

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x77

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Hl:I

    const/16 v3, 0x78

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x79

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x7a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x7b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Za:I

    const/16 v3, 0x7c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x7d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x7e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x7f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->An:I

    const/16 v3, 0x80

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x81

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x82

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x83

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->SI:I

    const/16 v3, 0x84

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x85

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x86

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x87

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Cz:I

    const/16 v3, 0x88

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x89

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x8a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x8b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->qI:I

    const/16 v3, 0x8c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x8d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x8e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x8f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->cb:I

    const/16 v3, 0x90

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x91

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x92

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x93

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->HO:I

    const/16 v3, 0x94

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x95

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x96

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x97

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->N0:I

    const/16 v3, 0x98

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x99

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x9a

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x9b

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->sy:I

    const/16 v3, 0x9c

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0x9d

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x9e

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0x9f

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Sf:I

    const/16 v3, 0xa0

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xa1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xa2

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xa3

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->u7:I

    const/16 v3, 0xa4

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xa5

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xa6

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xa7

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->yO:I

    const/16 v3, 0xa8

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xa9

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xaa

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xab

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->OW:I

    const/16 v3, 0xac

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xad

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xae

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xaf

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->I:I

    const/16 v3, 0xb0

    int-to-byte v4, v1

    aput-byte v4, p2, v3

    const/16 v3, 0xb1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xb2

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/16 v3, 0xb3

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    const/16 v1, 0xb4

    int-to-byte v3, v2

    aput-byte v3, p2, v1

    const/16 v1, 0xb5

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    const/16 v1, 0xb6

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    const/16 v1, 0xb7

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->x9:I

    const/16 v2, 0xb8

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xb9

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xba

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xbb

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Ev:I

    const/16 v2, 0xbc

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xbd

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xbe

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xbf

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->we:I

    const/16 v2, 0xc0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xc1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xc2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xc3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->kf:I

    const/16 v2, 0xc4

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xc5

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xc6

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xc7

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->lp:I

    const/16 v2, 0xc8

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xc9

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xca

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xcb

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->hK:I

    const/16 v2, 0xcc

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xcd

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xce

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xcf

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->br:I

    const/16 v2, 0xd0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xd1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xd2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xd3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    const/16 v1, 0xd4

    int-to-byte v2, v7

    aput-byte v2, p2, v1

    const/16 v1, 0xd5

    ushr-int/lit8 v2, v7, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0xd6

    ushr-int/lit8 v2, v7, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0xd7

    const/high16 v2, -0x1000000

    and-int/2addr v2, v7

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->kQ:I

    const/16 v2, 0xd8

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xd9

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xda

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xdb

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Mz:I

    const/16 v2, 0xdc

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xdd

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xde

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xdf

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->HT:I

    const/16 v2, 0xe0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xe1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xe2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xe3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Yi:I

    const/16 v2, 0xe4

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xe5

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xe6

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xe7

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->PT:I

    const/16 v2, 0xe8

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xe9

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xea

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xeb

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->RW:I

    const/16 v2, 0xec

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xed

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xee

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xef

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->k1:I

    const/16 v2, 0xf0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xf1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xf2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xf3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->cT:I

    const/16 v2, 0xf4

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xf5

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xf6

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xf7

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/Nw;->Eq:I

    const/16 v2, 0xf8

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    const/16 v2, 0xf9

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xfa

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0xfb

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    iget v0, v0, Lcom/google/android/gms/internal/ads/Nw;->Jl:I

    const/16 v1, 0xfc

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    const/16 v1, 0xfd

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0xfe

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0xff

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    return-void
.end method
