.class public final Lcom/google/android/gms/internal/ads/dH;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/os/Bundle;

.field private EQ:Ljava/lang/String;

.field private FH:I

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Landroid/os/Bundle;

.field private J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Ljava/lang/String;

.field private QX:Ljava/lang/String;

.field private VH:Z

.field private Ws:Ljava/lang/String;

.field private XL:Z

.field private Zo:I

.field private aM:Lcom/google/android/gms/internal/ads/zzvv;

.field private gn:Ljava/lang/String;

.field private j3:I

.field private j6:J

.field private tp:Landroid/location/Location;

.field private u7:Lcom/google/android/gms/internal/ads/zzzs;

.field private v5:Z

.field private we:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dH;->j6:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->DW:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dH;->FH:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->Hw:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dH;->v5:Z

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dH;->Zo:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dH;->VH:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->gn:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->tp:Lcom/google/android/gms/internal/ads/zzzs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->u7:Lcom/google/android/gms/internal/ads/zzzs;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->tp:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->EQ:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->we:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->J0:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->J8:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->Ws:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->QX:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dH;->XL:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->j3:Lcom/google/android/gms/internal/ads/zzvv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dH;->aM:Lcom/google/android/gms/internal/ads/zzvv;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dH;->j3:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dH;->Mr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6(Landroid/location/Location;)Lcom/google/android/gms/internal/ads/dH;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dH;->tp:Landroid/location/Location;

    return-object p0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/zzwb;
    .registers 26

    move-object/from16 v0, p0

    new-instance v24, Lcom/google/android/gms/internal/ads/zzwb;

    move-object/from16 v1, v24

    const/16 v2, 0x8

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/dH;->j6:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dH;->DW:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/ads/dH;->FH:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dH;->Hw:Ljava/util/List;

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/dH;->v5:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/dH;->Zo:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/dH;->VH:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dH;->gn:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dH;->u7:Lcom/google/android/gms/internal/ads/zzzs;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/dH;->tp:Landroid/location/Location;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/dH;->EQ:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/dH;->we:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->J0:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->J8:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->Ws:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->QX:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/dH;->XL:Z

    move/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->aM:Lcom/google/android/gms/internal/ads/zzvv;

    move-object/from16 v21, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/dH;->j3:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dH;->Mr:Ljava/lang/String;

    move-object/from16 v23, v2

    const/16 v2, 0x8

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    return-object v24
.end method
