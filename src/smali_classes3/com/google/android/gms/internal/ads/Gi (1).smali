.class public final Lcom/google/android/gms/internal/ads/Gi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private BT:Lcom/google/android/gms/internal/ads/zzaso;

.field private DW:Ljava/lang/String;

.field private EQ:Z

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J8:J

.field private KD:Lcom/google/android/gms/internal/ads/zzawo;

.field private Mr:Z

.field private P8:Ljava/lang/String;

.field private QX:Z

.field private SI:Ljava/lang/String;

.field private U2:Ljava/lang/String;

.field private VH:Ljava/lang/String;

.field private Ws:I

.field private XL:Z

.field private Zo:Ljava/lang/String;

.field private a8:Z

.field private aM:Z

.field private cb:Z

.field private cn:Z

.field private dx:Ljava/lang/String;

.field private ei:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private er:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gW:Z

.field private gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Z

.field private j6:Ljava/lang/String;

.field private lg:Z

.field private nw:Z

.field private rN:Lcom/google/android/gms/internal/ads/zzawd;

.field private ro:Z

.field private final sG:Lcom/google/android/gms/internal/ads/zzasi;

.field private sh:Z

.field private tp:J

.field private u7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/lang/String;

.field private vy:Z

.field private final we:J

.field private yS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Gi;->tp:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->EQ:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Gi;->we:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Gi;->J8:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Ws:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->QX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->XL:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->aM:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->j3:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Mr:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->U2:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->a8:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->lg:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->gW:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Gi;->vy:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Gi;->DW:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gi;->sG:Lcom/google/android/gms/internal/ads/zzasi;

    return-void
.end method

.method private static DW(Ljava/util/Map;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_15
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1f

    const/high16 p1, 0x447a0000  # 1000.0f

    mul-float p0, p0, p1

    float-to-long p0, p0

    return-wide p0

    :catch_1f
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not parse float from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " header: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_4f
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_26

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private static Hw(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1f

    :cond_10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    return p1
.end method

.method private static j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final j6(JLcom/google/android/gms/internal/ads/Ii;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Gi;->sG:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Gi;->DW:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Gi;->FH:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Gi;->Hw:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Gi;->gn:Ljava/util/List;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/Gi;->tp:J

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/Gi;->EQ:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Gi;->J0:Ljava/util/List;

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/Gi;->J8:J

    iget v15, v0, Lcom/google/android/gms/internal/ads/Gi;->Ws:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->j6:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Gi;->Zo:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Gi;->VH:Ljava/lang/String;

    move-object/from16 v16, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->QX:Z

    move/from16 v17, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->XL:Z

    move/from16 v18, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->aM:Z

    move/from16 v19, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->j3:Z

    move/from16 v20, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->U2:Ljava/lang/String;

    move-object/from16 v21, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->a8:Z

    move/from16 v22, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->lg:Z

    move/from16 v23, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->rN:Lcom/google/android/gms/internal/ads/zzawd;

    move-object/from16 v24, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->er:Ljava/util/List;

    move-object/from16 v25, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->yS:Ljava/util/List;

    move-object/from16 v26, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->gW:Z

    move/from16 v27, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->BT:Lcom/google/android/gms/internal/ads/zzaso;

    move-object/from16 v28, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->vy:Z

    move/from16 v29, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->P8:Ljava/lang/String;

    move-object/from16 v30, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->ei:Ljava/util/List;

    move-object/from16 v31, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->nw:Z

    move/from16 v32, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->SI:Ljava/lang/String;

    move-object/from16 v33, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->KD:Lcom/google/android/gms/internal/ads/zzawo;

    move-object/from16 v34, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->v5:Ljava/lang/String;

    move-object/from16 v35, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->Mr:Z

    move/from16 v36, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->ro:Z

    move/from16 v37, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->cn:Z

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/Ii;->VH()Z

    move-result v38

    if-eqz v38, :cond_7f

    const/16 v38, 0x2

    const/16 v44, 0x2

    goto :goto_83

    :cond_7f
    const/16 v38, 0x1

    const/16 v44, 0x1

    :goto_83
    new-instance v51, Lcom/google/android/gms/internal/ads/zzasm;

    move-object/from16 v38, v1

    move-object/from16 v1, v51

    const-wide/16 v39, -0x1

    move/from16 v54, v10

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    move-object/from16 v43, v35

    move/from16 v52, v36

    move/from16 v53, v37

    move-object/from16 v33, v28

    move/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v36, v31

    move/from16 v37, v32

    move/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move/from16 v32, v27

    move/from16 v23, v19

    move/from16 v24, v20

    move-object/from16 v26, v21

    move/from16 v27, v22

    move-object/from16 v19, v11

    move/from16 v21, v17

    move/from16 v22, v18

    move-wide/from16 v10, v39

    const/16 v25, 0x0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->sh:Z

    move/from16 v45, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->u7:Ljava/util/List;

    move-object/from16 v46, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Gi;->cb:Z

    move/from16 v47, v10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Gi;->dx:Ljava/lang/String;

    move-object/from16 v48, v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/Ii;->gn()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/Ii;->u7()Z

    move-result v50

    move-wide/from16 v17, p1

    move-object/from16 v20, v38

    move-object/from16 v38, v41

    move-object/from16 v39, v42

    move-object/from16 v40, v43

    move/from16 v41, v52

    move/from16 v42, v53

    move/from16 v43, v54

    const-wide/16 v10, -0x1

    invoke-direct/range {v1 .. v50}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v51
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gi;->FH:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;)V

    return-void
.end method

.method public final j6(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->j6:Ljava/lang/String;

    const-string v0, "X-Afma-Ad-Slot-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->SI:Ljava/lang/String;

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Hw:Ljava/util/List;

    :cond_1a
    const-string v0, "X-Afma-Debug-Signals"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->v5:Ljava/lang/String;

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Zo:Ljava/lang/String;

    :cond_3b
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_45

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->gn:Ljava/util/List;

    :cond_45
    const-string v0, "X-Afma-Downloaded-Impression-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4f

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->u7:Ljava/util/List;

    :cond_4f
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5d

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Gi;->tp:J

    :cond_5d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->EQ:Z

    const-string v2, "X-Afma-Mediation"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->EQ:Z

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_72

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->J0:Ljava/util/List;

    :cond_72
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7e

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Gi;->J8:J

    :cond_7e
    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v0

    :goto_a4
    iput v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Ws:I

    goto :goto_b8

    :cond_a7
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v0

    goto :goto_a4

    :cond_b8
    :goto_b8
    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->VH:Ljava/lang/String;

    const-string v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_e0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->aM:Z

    :cond_e0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->QX:Z

    const-string v2, "X-Afma-Custom-Rendering-Allowed"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->QX:Z

    const-string v0, "native"

    const-string v2, "X-Afma-Ad-Format"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->XL:Z

    const-string v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_119

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_119

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->j3:Z

    :cond_119
    const-string v0, "X-Afma-Content-Vertical-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_139

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->Mr:Z

    :cond_139
    const-string v0, "X-Afma-Gws-Query-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_151

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_151

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->U2:Ljava/lang/String;

    :cond_151
    const-string v0, "X-Afma-Fluid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_164

    const-string v4, "height"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Gi;->a8:Z

    :cond_164
    const-string v0, "native_express"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->lg:Z

    const-string v0, "X-Afma-Rewards"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawd;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->rN:Lcom/google/android/gms/internal/ads/zzawd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->er:Ljava/util/List;

    if-nez v0, :cond_188

    const-string v0, "X-Afma-Reward-Video-Start-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->er:Ljava/util/List;

    :cond_188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->yS:Ljava/util/List;

    if-nez v0, :cond_194

    const-string v0, "X-Afma-Reward-Video-Complete-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->yS:Ljava/util/List;

    :cond_194
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->gW:Z

    const-string v2, "X-Afma-Use-Displayed-Impression"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->gW:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->vy:Z

    const-string v2, "X-Afma-Auto-Collect-Location"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->vy:Z

    const-string v0, "Set-Cookie"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->P8:Ljava/lang/String;

    const-string v0, "X-Afma-Auto-Protection-Configuration"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto :goto_1d9

    :cond_1c1
    :try_start_1c1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaso;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzaso;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->BT:Lcom/google/android/gms/internal/ads/zzaso;
    :try_end_1cc
    .catch Lorg/json/JSONException; {:try_start_1c1 .. :try_end_1cc} :catch_1cd

    goto :goto_227

    :catch_1cd
    move-exception v0

    const-string v1, "Error parsing configuration JSON"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaso;-><init>()V

    goto :goto_225

    :cond_1d9
    :goto_1d9
    const-string v0, "https://pagead2.googlesyndication.com/pagead/gen_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "id"

    const-string v4, "gmob-apps-blocked-navigation"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Gi;->Zo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f9

    const-string v2, "debugDialog"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Gi;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1f9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&navigationURL={NAVIGATION_URL}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaso;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzaso;-><init>(ZLjava/util/List;)V

    :goto_225
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->BT:Lcom/google/android/gms/internal/ads/zzaso;

    :goto_227
    const-string v0, "X-Afma-Remote-Ping-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->FH(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_231

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->ei:Ljava/util/List;

    :cond_231
    const-string v0, "X-Afma-Safe-Browsing"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24f

    :try_start_23d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawo;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gi;->KD:Lcom/google/android/gms/internal/ads/zzawo;
    :try_end_248
    .catch Lorg/json/JSONException; {:try_start_23d .. :try_end_248} :catch_249

    goto :goto_24f

    :catch_249
    move-exception v0

    const-string v1, "Error parsing safe browsing header"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24f
    :goto_24f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->nw:Z

    const-string v1, "X-Afma-Render-In-Browser"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->nw:Z

    const-string v0, "X-Afma-Pool"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27a

    :try_start_266
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "never_pool"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->ro:Z
    :try_end_273
    .catch Lorg/json/JSONException; {:try_start_266 .. :try_end_273} :catch_274

    goto :goto_27a

    :catch_274
    move-exception v0

    const-string v1, "Error parsing interstitial pool header"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27a
    :goto_27a
    const-string v0, "X-Afma-Custom-Close-Blocked"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->cn:Z

    const-string v0, "X-Afma-Enable-Omid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->sh:Z

    const-string v0, "X-Afma-Disable-Closable-Area"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->Hw(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Gi;->cb:Z

    const-string v0, "X-Afma-Omid-Settings"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gi;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Gi;->dx:Ljava/lang/String;

    return-void
.end method
