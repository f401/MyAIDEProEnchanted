.class public final Lcom/google/android/gms/ads/internal/l;
.super Lcom/google/android/gms/internal/ads/EH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/fb;

.field private EQ:Lcom/google/android/gms/internal/ads/zzafz;

.field private FH:Lcom/google/android/gms/internal/ads/ub;

.field private Hw:Lcom/google/android/gms/internal/ads/ib;

.field private J0:Lcom/google/android/gms/internal/ads/WH;

.field private final J8:Landroid/content/Context;

.field private final QX:Ljava/lang/String;

.field private VH:Lcom/google/android/gms/internal/ads/rb;

.field private final Ws:Lcom/google/android/gms/internal/ads/Ge;

.field private final XL:Lcom/google/android/gms/internal/ads/zzbbi;

.field private Zo:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ob;",
            ">;"
        }
    .end annotation
.end field

.field private final aM:Lcom/google/android/gms/ads/internal/ta;

.field private gn:Lcom/google/android/gms/internal/ads/zzwf;

.field private j6:Lcom/google/android/gms/internal/ads/xH;

.field private tp:Lcom/google/android/gms/internal/ads/zzacp;

.field private u7:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private v5:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lb;",
            ">;"
        }
    .end annotation
.end field

.field private we:Lcom/google/android/gms/internal/ads/cc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EH;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->J8:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->QX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/l;->Ws:Lcom/google/android/gms/internal/ads/Ge;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/l;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    new-instance p1, Labcd/x;

    invoke-direct {p1}, Labcd/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->Zo:Labcd/x;

    new-instance p1, Labcd/x;

    invoke-direct {p1}, Labcd/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->v5:Labcd/x;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/l;->aM:Lcom/google/android/gms/ads/internal/ta;

    return-void
.end method


# virtual methods
.method public final AE()Lcom/google/android/gms/internal/ads/AH;
    .registers 23

    move-object/from16 v0, p0

    new-instance v20, Lcom/google/android/gms/ads/internal/i;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/l;->J8:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/l;->QX:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/l;->Ws:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/l;->XL:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/l;->j6:Lcom/google/android/gms/internal/ads/xH;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/l;->DW:Lcom/google/android/gms/internal/ads/fb;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/l;->FH:Lcom/google/android/gms/internal/ads/ub;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/l;->we:Lcom/google/android/gms/internal/ads/cc;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/l;->Hw:Lcom/google/android/gms/internal/ads/ib;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/l;->Zo:Labcd/x;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/l;->v5:Labcd/x;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/l;->tp:Lcom/google/android/gms/internal/ads/zzacp;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/l;->EQ:Lcom/google/android/gms/internal/ads/zzafz;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/l;->J0:Lcom/google/android/gms/internal/ads/WH;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/l;->aM:Lcom/google/android/gms/ads/internal/ta;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/l;->VH:Lcom/google/android/gms/internal/ads/rb;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/l;->gn:Lcom/google/android/gms/internal/ads/zzwf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/l;->u7:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/ads/internal/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/xH;Lcom/google/android/gms/internal/ads/fb;Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/cc;Lcom/google/android/gms/internal/ads/ib;Labcd/x;Labcd/x;Lcom/google/android/gms/internal/ads/zzacp;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/WH;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    return-object v20
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/WH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->J0:Lcom/google/android/gms/internal/ads/WH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->u7:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/cc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->we:Lcom/google/android/gms/internal/ads/cc;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/fb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->DW:Lcom/google/android/gms/internal/ads/fb;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ib;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->Hw:Lcom/google/android/gms/internal/ads/ib;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->VH:Lcom/google/android/gms/internal/ads/rb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/l;->gn:Lcom/google/android/gms/internal/ads/zzwf;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/ub;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->FH:Lcom/google/android/gms/internal/ads/ub;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->j6:Lcom/google/android/gms/internal/ads/xH;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzacp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->tp:Lcom/google/android/gms/internal/ads/zzacp;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzafz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/l;->EQ:Lcom/google/android/gms/internal/ads/zzafz;

    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/lb;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->Zo:Labcd/x;

    invoke-virtual {v0, p1, p2}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/l;->v5:Labcd/x;

    invoke-virtual {p2, p1, p3}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
