.class public Labcd/HF;
.super Labcd/hC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/HF$a;
    }
.end annotation


# static fields
.field private static final EQ:[B

.field static final J0:[B

.field static final J8:[B

.field private static final Mr:[B

.field private static final QX:[B

.field private static final U2:[B

.field private static final Ws:[B

.field private static final XL:[B

.field private static final a8:[B

.field private static final aM:[B

.field static final er:[B

.field private static final j3:[B

.field static final lg:[B

.field static final rN:[B

.field private static final we:[B


# instance fields
.field BT:I

.field private P8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/JF;",
            ">;"
        }
    .end annotation
.end field

.field final gW:I

.field vy:Labcd/HF$a;

.field final yS:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "old mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->EQ:[B

    const-string v0, "new mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->we:[B

    const-string v0, "deleted file mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->J0:[B

    const-string v0, "new file mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->J8:[B

    const-string v0, "copy from "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->Ws:[B

    const-string v0, "copy to "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->QX:[B

    const-string v0, "rename old "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->XL:[B

    const-string v0, "rename new "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->aM:[B

    const-string v0, "rename from "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->j3:[B

    const-string v0, "rename to "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->Mr:[B

    const-string v0, "similarity index "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->U2:[B

    const-string v0, "dissimilarity index "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->a8:[B

    const-string v0, "index "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->lg:[B

    const-string v0, "--- "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->rN:[B

    const-string v0, "+++ "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/HF;->er:[B

    return-void
.end method

.method constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Labcd/hC;-><init>()V

    iput-object p1, p0, Labcd/HF;->yS:[B

    iput p2, p0, Labcd/HF;->gW:I

    sget-object p1, Labcd/hC$a;->DW:Labcd/hC$a;

    iput-object p1, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object p1, Labcd/HF$a;->j6:Labcd/HF$a;

    iput-object p1, p0, Labcd/HF;->vy:Labcd/HF$a;

    return-void
.end method

.method public constructor <init>([BLabcd/kC;Labcd/HF$a;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/HF;-><init>([BI)V

    array-length v0, p1

    iput v0, p0, Labcd/HF;->BT:I

    sget-object v0, Labcd/KF;->j6:[B

    array-length v0, v0

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Labcd/HF;->DW(II)I

    move-result v0

    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Labcd/HF;->FH(II)I

    iput-object p3, p0, Labcd/HF;->vy:Labcd/HF$a;

    new-instance p1, Labcd/JF;

    invoke-direct {p1, p0, p2}, Labcd/JF;-><init>(Labcd/HF;Labcd/kC;)V

    invoke-virtual {p0, p1}, Labcd/HF;->j6(Labcd/JF;)V

    return-void
.end method

.method static j6([BII)I
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_d

    aget-byte v1, p0, v0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_a

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    :goto_d
    sub-int v1, v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_14

    return v3

    :cond_14
    if-eq v0, p2, :cond_2e

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1f

    goto :goto_2e

    :cond_1f
    if-eq v1, p2, :cond_2e

    aget-byte p0, p0, v1

    const/16 p2, 0x2d

    if-eq p0, p2, :cond_28

    goto :goto_2e

    :cond_28
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x3

    sub-int/2addr v1, p1

    return v1

    :cond_2e
    :goto_2e
    return v3
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private j6(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    if-ne p2, p3, :cond_3

    return-object p1

    :cond_3
    iget-object p1, p0, Labcd/HF;->yS:[B

    aget-byte v0, p1, p2

    const/16 v1, 0x22

    if-ne v0, v1, :cond_14

    sget-object v0, Labcd/GK;->j6:Labcd/GK$c;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p1, p2, p3}, Labcd/GK$c;->j6([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_14
    move p1, p3

    :goto_15
    if-ge p2, p1, :cond_25

    iget-object v0, p0, Labcd/HF;->yS:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    :cond_25
    :goto_25
    if-ne p2, p1, :cond_28

    goto :goto_29

    :cond_28
    move p3, p1

    :goto_29
    sget-object p1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    iget-object v0, p0, Labcd/HF;->yS:[B

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, v0, p2, p3}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p1

    :goto_33
    const-string p2, "/dev/null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3c

    move-object p1, p2

    :cond_3c
    return-object p1
.end method

.method private j6(IIII)Z
    .registers 7

    sub-int v0, p2, p1

    sub-int/2addr p4, p3

    const/4 v1, 0x0

    if-eq v0, p4, :cond_7

    return v1

    :cond_7
    :goto_7
    if-lt p1, p2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    iget-object p4, p0, Labcd/HF;->yS:[B

    aget-byte v0, p4, p1

    aget-byte p4, p4, p3

    if-eq v0, p4, :cond_14

    return v1

    :cond_14
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_7
.end method


# virtual methods
.method DW(II)I
    .registers 9

    iget-object v0, p0, Labcd/HF;->yS:[B

    invoke-static {v0, p1}, Labcd/IK;->Zo([BI)I

    move-result v0

    if-lt v0, p2, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    iget-object p2, p0, Labcd/HF;->yS:[B

    const/16 v1, 0x2f

    invoke-static {p2, p1, v1}, Labcd/IK;->DW([BIC)I

    move-result p2

    if-lt p2, v0, :cond_15

    return v0

    :cond_15
    move v2, p1

    :cond_16
    if-lt v2, v0, :cond_19

    return v0

    :cond_19
    iget-object v3, p0, Labcd/HF;->yS:[B

    const/16 v4, 0x20

    invoke-static {v3, v2, v4}, Labcd/IK;->DW([BIC)I

    move-result v2

    if-lt v2, v0, :cond_24

    return v0

    :cond_24
    iget-object v3, p0, Labcd/HF;->yS:[B

    invoke-static {v3, v2, v1}, Labcd/IK;->DW([BIC)I

    move-result v3

    if-lt v3, v0, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v0, -0x1

    invoke-direct {p0, p2, v4, v3, v5}, Labcd/HF;->j6(IIII)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v1, p0, Labcd/HF;->yS:[B

    aget-byte v3, v1, p1

    const/16 v5, 0x22

    if-ne v3, v5, :cond_55

    add-int/lit8 v2, v2, -0x2

    aget-byte p2, v1, v2

    if-eq p2, v5, :cond_46

    return v0

    :cond_46
    sget-object p2, Labcd/GK;->j6:Labcd/GK$c;

    invoke-virtual {p2, v1, p1, v4}, Labcd/GK$c;->j6([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-static {p1}, Labcd/HF;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    :cond_55
    sget-object p1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {p1, v1, p2, v4}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p1

    :goto_5b
    iput-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    iput-object p1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    return v0
.end method

.method public EQ()I
    .registers 2

    iget v0, p0, Labcd/HF;->BT:I

    return v0
.end method

.method FH(II)I
    .registers 7

    :goto_0
    if-lt p1, p2, :cond_4

    goto/16 :goto_135

    :cond_4
    iget-object v0, p0, Labcd/HF;->yS:[B

    invoke-static {v0, p1}, Labcd/IK;->Zo([BI)I

    move-result v0

    iget-object v1, p0, Labcd/HF;->yS:[B

    invoke-static {v1, p1, v0}, Labcd/HF;->j6([BII)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_15

    goto/16 :goto_135

    :cond_15
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->rN:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_24

    invoke-virtual {p0, p1, v0}, Labcd/HF;->VH(II)V

    goto/16 :goto_132

    :cond_24
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->er:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_33

    invoke-virtual {p0, p1, v0}, Labcd/HF;->Zo(II)V

    goto/16 :goto_132

    :cond_33
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->EQ:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_47

    array-length v1, v2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Labcd/HF;->j6(II)Labcd/rE;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->v5:Labcd/rE;

    goto/16 :goto_132

    :cond_47
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->we:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_5b

    array-length v1, v2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Labcd/HF;->j6(II)Labcd/rE;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->Zo:Labcd/rE;

    goto/16 :goto_132

    :cond_5b
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->J0:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_77

    array-length v1, v2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Labcd/HF;->j6(II)Labcd/rE;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->v5:Labcd/rE;

    sget-object p1, Labcd/rE;->Zo:Labcd/rE;

    iput-object p1, p0, Labcd/hC;->Zo:Labcd/rE;

    sget-object p1, Labcd/hC$a;->FH:Labcd/hC$a;

    :goto_73
    iput-object p1, p0, Labcd/hC;->VH:Labcd/hC$a;

    goto/16 :goto_132

    :cond_77
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->J8:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_86

    invoke-virtual {p0, p1, v0}, Labcd/HF;->v5(II)V

    goto/16 :goto_132

    :cond_86
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->Ws:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_9d

    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    array-length v2, v2

    add-int/2addr p1, v2

    invoke-direct {p0, v1, p1, v0}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    :goto_9a
    sget-object p1, Labcd/hC$a;->v5:Labcd/hC$a;

    goto :goto_73

    :cond_9d
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->QX:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_b2

    iget-object v1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    array-length v2, v2

    add-int/2addr p1, v2

    invoke-direct {p0, v1, p1, v0}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    goto :goto_9a

    :cond_b2
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->XL:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_c9

    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    array-length v2, v2

    :goto_bf
    add-int/2addr p1, v2

    invoke-direct {p0, v1, p1, v0}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    :goto_c6
    sget-object p1, Labcd/hC$a;->Hw:Labcd/hC$a;

    goto :goto_73

    :cond_c9
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->aM:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_de

    iget-object v1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    array-length v2, v2

    :goto_d6
    add-int/2addr p1, v2

    invoke-direct {p0, v1, p1, v0}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    goto :goto_c6

    :cond_de
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->j3:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_ec

    iget-object v1, p0, Labcd/hC;->FH:Ljava/lang/String;

    array-length v2, v2

    goto :goto_bf

    :cond_ec
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->Mr:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_fa

    iget-object v1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    array-length v2, v2

    goto :goto_d6

    :cond_fa
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->U2:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_110

    iget-object v1, p0, Labcd/HF;->yS:[B

    array-length v2, v2

    add-int/2addr p1, v2

    invoke-static {v1, p1, v3}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result p1

    :goto_10d
    iput p1, p0, Labcd/hC;->gn:I

    goto :goto_132

    :cond_110
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->a8:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_123

    iget-object v1, p0, Labcd/HF;->yS:[B

    array-length v2, v2

    add-int/2addr p1, v2

    invoke-static {v1, p1, v3}, Labcd/IK;->j6([BILabcd/EK;)I

    move-result p1

    goto :goto_10d

    :cond_123
    iget-object v1, p0, Labcd/HF;->yS:[B

    sget-object v2, Labcd/HF;->lg:[B

    invoke-static {v1, p1, v2}, Labcd/IK;->j6([BI[B)I

    move-result v1

    if-ltz v1, :cond_135

    array-length v1, v2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0}, Labcd/HF;->Hw(II)V

    :goto_132
    move p1, v0

    goto/16 :goto_0

    :cond_135
    :goto_135
    return p1
.end method

.method Hw(II)V
    .registers 7

    iget-object v0, p0, Labcd/HF;->yS:[B

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1}, Labcd/IK;->DW([BIC)I

    move-result v0

    iget-object v1, p0, Labcd/HF;->yS:[B

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Labcd/IK;->DW([BIC)I

    move-result v1

    iget-object v2, p0, Labcd/HF;->yS:[B

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, p1, v3}, Labcd/WD;->j6([BII)Labcd/WD;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->u7:Labcd/WD;

    iget-object p1, p0, Labcd/HF;->yS:[B

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v0, v2}, Labcd/WD;->j6([BII)Labcd/WD;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->tp:Labcd/WD;

    if-ge v1, p2, :cond_30

    invoke-virtual {p0, v1, p2}, Labcd/HF;->j6(II)Labcd/rE;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->v5:Labcd/rE;

    iput-object p1, p0, Labcd/hC;->Zo:Labcd/rE;

    :cond_30
    return-void
.end method

.method public J0()Labcd/HF$a;
    .registers 2

    iget-object v0, p0, Labcd/HF;->vy:Labcd/HF$a;

    return-object v0
.end method

.method public J8()I
    .registers 2

    iget v0, p0, Labcd/HF;->gW:I

    return v0
.end method

.method VH(II)V
    .registers 5

    iget-object v0, p0, Labcd/hC;->FH:Ljava/lang/String;

    sget-object v1, Labcd/HF;->rN:[B

    array-length v1, v1

    add-int/2addr p1, v1

    invoke-direct {p0, v0, p1, p2}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/HF;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p1, p0, Labcd/hC;->FH:Ljava/lang/String;

    const-string p2, "/dev/null"

    if-ne p1, p2, :cond_1a

    sget-object p1, Labcd/hC$a;->j6:Labcd/hC$a;

    iput-object p1, p0, Labcd/hC;->VH:Labcd/hC$a;

    :cond_1a
    return-void
.end method

.method public Ws()Labcd/kC;
    .registers 4

    new-instance v0, Labcd/kC;

    invoke-direct {v0}, Labcd/kC;-><init>()V

    iget-object v1, p0, Labcd/HF;->P8:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    return-object v0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/JF;

    invoke-virtual {v2}, Labcd/JF;->Zo()Labcd/kC;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b
.end method

.method Zo(II)V
    .registers 5

    iget-object v0, p0, Labcd/hC;->Hw:Ljava/lang/String;

    sget-object v1, Labcd/HF;->er:[B

    array-length v1, v1

    add-int/2addr p1, v1

    invoke-direct {p0, v0, p1, p2}, Labcd/HF;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/HF;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object p1, p0, Labcd/hC;->Hw:Ljava/lang/String;

    const-string p2, "/dev/null"

    if-ne p1, p2, :cond_1a

    sget-object p1, Labcd/hC$a;->FH:Labcd/hC$a;

    iput-object p1, p0, Labcd/hC;->VH:Labcd/hC$a;

    :cond_1a
    return-void
.end method

.method j6(II)Labcd/rE;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lt p1, v1, :cond_a

    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object p1

    return-object p1

    :cond_a
    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Labcd/HF;->yS:[B

    aget-byte v1, v1, p1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method j6(Labcd/JF;)V
    .registers 3

    invoke-virtual {p1}, Labcd/JF;->j6()Labcd/HF;

    move-result-object v0

    if-ne v0, p0, :cond_17

    iget-object v0, p0, Labcd/HF;->P8:Ljava/util/List;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/HF;->P8:Ljava/util/List;

    :cond_11
    iget-object v0, p0, Labcd/HF;->P8:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->hunkBelongsToAnotherFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tp()[B
    .registers 2

    iget-object v0, p0, Labcd/HF;->yS:[B

    return-object v0
.end method

.method v5(II)V
    .registers 4

    sget-object v0, Labcd/rE;->Zo:Labcd/rE;

    iput-object v0, p0, Labcd/hC;->v5:Labcd/rE;

    sget-object v0, Labcd/HF;->J8:[B

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Labcd/HF;->j6(II)Labcd/rE;

    move-result-object p1

    iput-object p1, p0, Labcd/hC;->Zo:Labcd/rE;

    sget-object p1, Labcd/hC$a;->j6:Labcd/hC$a;

    iput-object p1, p0, Labcd/hC;->VH:Labcd/hC$a;

    return-void
.end method

.method public we()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Labcd/JF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/HF;->P8:Ljava/util/List;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method
