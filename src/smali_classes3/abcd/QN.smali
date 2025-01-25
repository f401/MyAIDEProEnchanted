.class public interface abstract Labcd/QN;
.super Ljava/lang/Object;


# static fields
.field public static final BT:Labcd/zL;

.field public static final CU:Labcd/zL;

.field public static final DW:Labcd/zL;

.field public static final EQ:Labcd/zL;

.field public static final FH:Labcd/zL;

.field public static final Hw:Labcd/zL;

.field public static final I:Labcd/zL;

.field public static final J0:Labcd/zL;

.field public static final J8:Labcd/zL;

.field public static final KD:Labcd/zL;

.field public static final Mr:Labcd/zL;

.field public static final Mz:Labcd/zL;

.field public static final OW:Labcd/zL;

.field public static final P8:Labcd/zL;

.field public static final QX:Labcd/zL;

.field public static final Qq:Labcd/zL;

.field public static final SI:Labcd/zL;

.field public static final Sf:Labcd/zL;

.field public static final U2:Labcd/zL;

.field public static final VH:Labcd/zL;

.field public static final Ws:Labcd/zL;

.field public static final XG:Labcd/zL;

.field public static final XL:Labcd/zL;

.field public static final XX:Labcd/zL;

.field public static final Xa:Labcd/zL;

.field public static final Zo:Labcd/zL;

.field public static final a8:Labcd/zL;

.field public static final aM:Labcd/zL;

.field public static final aj:Labcd/zL;

.field public static final br:Labcd/zL;

.field public static final ca:Labcd/zL;

.field public static final cb:Labcd/zL;

.field public static final cn:Labcd/zL;

.field public static final dx:Labcd/zL;

.field public static final ef:Labcd/zL;

.field public static final ei:Labcd/zL;

.field public static final er:Labcd/zL;

.field public static final et:Labcd/zL;

.field public static final g3:Labcd/zL;

.field public static final gW:Labcd/zL;

.field public static final gn:Labcd/zL;

.field public static final j3:Labcd/zL;

.field public static final j6:Labcd/zL;

.field public static final jJ:Labcd/zL;

.field public static final kQ:Labcd/zL;

.field public static final lg:Labcd/zL;

.field public static final lp:Labcd/zL;

.field public static final nw:Labcd/zL;

.field public static final rN:Labcd/zL;

.field public static final ro:Labcd/zL;

.field public static final sG:Labcd/zL;

.field public static final sh:Labcd/zL;

.field public static final sy:Labcd/zL;

.field public static final tp:Labcd/zL;

.field public static final u7:Labcd/zL;

.field public static final v5:Labcd/zL;

.field public static final vJ:Labcd/zL;

.field public static final vy:Labcd/zL;

.field public static final wc:Labcd/zL;

.field public static final we:Labcd/zL;

.field public static final x9:Labcd/zL;

.field public static final yO:Labcd/zL;

.field public static final yS:Labcd/zL;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Labcd/zL;

    const-string v1, "1.2.840.10045"

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/QN;->j6:Labcd/zL;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v2

    sput-object v2, Labcd/QN;->DW:Labcd/zL;

    invoke-virtual {v2, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v3

    sput-object v3, Labcd/QN;->FH:Labcd/zL;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->Hw:Labcd/zL;

    const-string v4, "2.3.1"

    invoke-virtual {v2, v4}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->v5:Labcd/zL;

    const-string v4, "2.3.2"

    invoke-virtual {v2, v4}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->Zo:Labcd/zL;

    const-string v4, "2.3.3"

    invoke-virtual {v2, v4}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v2

    sput-object v2, Labcd/QN;->VH:Labcd/zL;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->gn:Labcd/zL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Labcd/zL;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v6, Labcd/QN;->u7:Labcd/zL;

    invoke-virtual {v0, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v5

    sput-object v5, Labcd/QN;->tp:Labcd/zL;

    invoke-virtual {v5, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v5

    sput-object v5, Labcd/QN;->EQ:Labcd/zL;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->we:Labcd/zL;

    invoke-virtual {v4, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->J0:Labcd/zL;

    invoke-virtual {v4, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->J8:Labcd/zL;

    invoke-virtual {v4, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->Ws:Labcd/zL;

    invoke-virtual {v4, v2}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->QX:Labcd/zL;

    invoke-virtual {v0, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->XL:Labcd/zL;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->aM:Labcd/zL;

    invoke-virtual {v4, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->j3:Labcd/zL;

    invoke-virtual {v4, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->Mr:Labcd/zL;

    invoke-virtual {v4, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->U2:Labcd/zL;

    invoke-virtual {v4, v2}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v6

    sput-object v6, Labcd/QN;->a8:Labcd/zL;

    const-string v6, "5"

    invoke-virtual {v4, v6}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v7

    sput-object v7, Labcd/QN;->lg:Labcd/zL;

    const-string v7, "6"

    invoke-virtual {v4, v7}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v8

    sput-object v8, Labcd/QN;->rN:Labcd/zL;

    const-string v8, "7"

    invoke-virtual {v4, v8}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v9

    sput-object v9, Labcd/QN;->er:Labcd/zL;

    const-string v9, "8"

    invoke-virtual {v4, v9}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->yS:Labcd/zL;

    const-string v10, "9"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->gW:Labcd/zL;

    const-string v10, "10"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->BT:Labcd/zL;

    const-string v10, "11"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->vy:Labcd/zL;

    const-string v10, "12"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->P8:Labcd/zL;

    const-string v10, "13"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->ei:Labcd/zL;

    const-string v10, "14"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->nw:Labcd/zL;

    const-string v10, "15"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v10

    sput-object v10, Labcd/QN;->SI:Labcd/zL;

    const-string v10, "16"

    invoke-virtual {v4, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v11

    sput-object v11, Labcd/QN;->KD:Labcd/zL;

    const-string v11, "17"

    invoke-virtual {v4, v11}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v11

    sput-object v11, Labcd/QN;->ro:Labcd/zL;

    const-string v11, "18"

    invoke-virtual {v4, v11}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v11

    sput-object v11, Labcd/QN;->cn:Labcd/zL;

    const-string v11, "19"

    invoke-virtual {v4, v11}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v11

    sput-object v11, Labcd/QN;->sh:Labcd/zL;

    const-string v11, "20"

    invoke-virtual {v4, v11}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->cb:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->dx:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->sG:Labcd/zL;

    invoke-virtual {v0, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->ef:Labcd/zL;

    invoke-virtual {v0, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->Sf:Labcd/zL;

    invoke-virtual {v0, v2}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->vJ:Labcd/zL;

    invoke-virtual {v0, v6}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->g3:Labcd/zL;

    invoke-virtual {v0, v7}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->Mz:Labcd/zL;

    invoke-virtual {v0, v8}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->I:Labcd/zL;

    new-instance v0, Labcd/zL;

    const-string v4, "1.2.840.10040.4.1"

    invoke-direct {v0, v4}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/QN;->ca:Labcd/zL;

    new-instance v0, Labcd/zL;

    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v0, v4}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/QN;->x9:Labcd/zL;

    new-instance v0, Labcd/zL;

    const-string v4, "1.3.133.16.840.63.0"

    invoke-direct {v0, v4}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/QN;->Qq:Labcd/zL;

    invoke-virtual {v0, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->sy:Labcd/zL;

    invoke-virtual {v0, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->aj:Labcd/zL;

    invoke-virtual {v0, v10}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->lp:Labcd/zL;

    new-instance v0, Labcd/zL;

    const-string v4, "1.2.840.10046"

    invoke-direct {v0, v4}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/QN;->OW:Labcd/zL;

    const-string v4, "2.1"

    invoke-virtual {v0, v4}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v4

    sput-object v4, Labcd/QN;->br:Labcd/zL;

    invoke-virtual {v0, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->XX:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->kQ:Labcd/zL;

    invoke-virtual {v0, v3}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->yO:Labcd/zL;

    invoke-virtual {v0, v5}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->XG:Labcd/zL;

    invoke-virtual {v0, v2}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->jJ:Labcd/zL;

    invoke-virtual {v0, v6}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->wc:Labcd/zL;

    invoke-virtual {v0, v7}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->et:Labcd/zL;

    invoke-virtual {v0, v8}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v1

    sput-object v1, Labcd/QN;->CU:Labcd/zL;

    invoke-virtual {v0, v9}, Labcd/zL;->DW(Ljava/lang/String;)Labcd/zL;

    move-result-object v0

    sput-object v0, Labcd/QN;->Xa:Labcd/zL;

    return-void
.end method
