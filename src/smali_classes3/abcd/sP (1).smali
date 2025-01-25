.class public Labcd/sP;
.super Ljava/lang/Object;


# static fields
.field protected static final DW:Ljava/lang/String;

.field protected static final EQ:Ljava/lang/String;

.field protected static final FH:Ljava/lang/String;

.field protected static final Hw:Ljava/lang/String;

.field protected static final J0:Ljava/lang/String;

.field protected static final J8:Ljava/lang/String;

.field protected static final QX:[Ljava/lang/String;

.field protected static final VH:Ljava/lang/String;

.field protected static final Ws:Ljava/lang/String;

.field protected static final Zo:Ljava/lang/String;

.field protected static final gn:Ljava/lang/String;

.field private static final j6:Labcd/rP;

.field protected static final tp:Ljava/lang/String;

.field protected static final u7:Ljava/lang/String;

.field protected static final v5:Ljava/lang/String;

.field protected static final we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/rP;

    invoke-direct {v0}, Labcd/rP;-><init>()V

    sput-object v0, Labcd/sP;->j6:Labcd/rP;

    sget-object v0, Labcd/JN;->XL:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->DW:Ljava/lang/String;

    sget-object v0, Labcd/JN;->aM:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->FH:Ljava/lang/String;

    sget-object v0, Labcd/JN;->lg:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->Hw:Ljava/lang/String;

    sget-object v0, Labcd/JN;->J0:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->v5:Ljava/lang/String;

    sget-object v0, Labcd/JN;->a8:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->Zo:Ljava/lang/String;

    sget-object v0, Labcd/JN;->we:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->VH:Ljava/lang/String;

    sget-object v0, Labcd/JN;->Mr:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->gn:Ljava/lang/String;

    sget-object v0, Labcd/JN;->VH:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->u7:Ljava/lang/String;

    sget-object v0, Labcd/JN;->QX:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->tp:Ljava/lang/String;

    sget-object v0, Labcd/JN;->v5:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->EQ:Ljava/lang/String;

    sget-object v0, Labcd/JN;->Ws:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->we:Ljava/lang/String;

    sget-object v0, Labcd/JN;->j3:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->J0:Ljava/lang/String;

    sget-object v0, Labcd/JN;->FH:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->J8:Ljava/lang/String;

    sget-object v0, Labcd/JN;->gn:Labcd/zL;

    invoke-virtual {v0}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/sP;->Ws:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Labcd/sP;->QX:[Ljava/lang/String;

    return-void
.end method
