.class public final Labcd/Qs;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Rs;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Labcd/Rs;",
        "Ljava/lang/Comparable<",
        "Labcd/Qs;",
        ">;"
    }
.end annotation


# static fields
.field public static final BT:Labcd/Qs;

.field public static final DW:Labcd/Qs;

.field public static final EQ:Labcd/Qs;

.field public static final FH:Labcd/Qs;

.field public static final Hw:Labcd/Qs;

.field public static final J0:Labcd/Qs;

.field public static final J8:Labcd/Qs;

.field public static final KD:Labcd/Qs;

.field public static final Mr:Labcd/Qs;

.field public static final P8:Labcd/Qs;

.field public static final QX:Labcd/Qs;

.field public static final SI:Labcd/Qs;

.field public static final U2:Labcd/Qs;

.field public static final VH:Labcd/Qs;

.field public static final Ws:Labcd/Qs;

.field public static final XL:Labcd/Qs;

.field public static final Zo:Labcd/Qs;

.field public static final a8:Labcd/Qs;

.field public static final aM:Labcd/Qs;

.field public static final cn:Labcd/Qs;

.field public static final ei:Labcd/Qs;

.field public static final er:Labcd/Qs;

.field public static final gW:Labcd/Qs;

.field public static final gn:Labcd/Qs;

.field public static final j3:Labcd/Qs;

.field private static final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Labcd/Qs;",
            ">;"
        }
    .end annotation
.end field

.field public static final lg:Labcd/Qs;

.field public static final nw:Labcd/Qs;

.field public static final rN:Labcd/Qs;

.field public static final ro:Labcd/Qs;

.field public static final sh:Labcd/Qs;

.field public static final tp:Labcd/Qs;

.field public static final u7:Labcd/Qs;

.field public static final v5:Labcd/Qs;

.field public static final vy:Labcd/Qs;

.field public static final we:Labcd/Qs;

.field public static final yS:Labcd/Qs;


# instance fields
.field private Sf:Labcd/Qs;

.field private final cb:Ljava/lang/String;

.field private final dx:I

.field private ef:Ljava/lang/String;

.field private g3:Labcd/Qs;

.field private final sG:I

.field private vJ:Labcd/Qs;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Labcd/Qs;->j6:Ljava/util/HashMap;

    new-instance v0, Labcd/Qs;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Qs;->DW:Labcd/Qs;

    new-instance v1, Labcd/Qs;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/Qs;->FH:Labcd/Qs;

    new-instance v2, Labcd/Qs;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/Qs;->Hw:Labcd/Qs;

    new-instance v3, Labcd/Qs;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/Qs;->v5:Labcd/Qs;

    new-instance v4, Labcd/Qs;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/Qs;->Zo:Labcd/Qs;

    new-instance v5, Labcd/Qs;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/Qs;->VH:Labcd/Qs;

    new-instance v6, Labcd/Qs;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/Qs;->gn:Labcd/Qs;

    new-instance v7, Labcd/Qs;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/Qs;->u7:Labcd/Qs;

    new-instance v8, Labcd/Qs;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/Qs;->tp:Labcd/Qs;

    new-instance v8, Labcd/Qs;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/Qs;->EQ:Labcd/Qs;

    new-instance v8, Labcd/Qs;

    const-string v9, "<addr>"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/Qs;->we:Labcd/Qs;

    invoke-static {v0}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v1}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v2}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v3}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v4}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v5}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v6}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    invoke-static {v7}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    const-string v8, "Ljava/lang/annotation/Annotation;"

    invoke-static {v8}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v8

    sput-object v8, Labcd/Qs;->J0:Labcd/Qs;

    const-string v8, "Ljava/lang/Class;"

    invoke-static {v8}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v8

    sput-object v8, Labcd/Qs;->J8:Labcd/Qs;

    const-string v8, "Ljava/lang/Cloneable;"

    invoke-static {v8}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v8

    sput-object v8, Labcd/Qs;->Ws:Labcd/Qs;

    const-string v8, "Ljava/lang/Object;"

    invoke-static {v8}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v8

    sput-object v8, Labcd/Qs;->QX:Labcd/Qs;

    const-string v9, "Ljava/io/Serializable;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->XL:Labcd/Qs;

    const-string v9, "Ljava/lang/String;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->aM:Labcd/Qs;

    const-string v9, "Ljava/lang/Throwable;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->j3:Labcd/Qs;

    const-string v9, "Ljava/lang/Boolean;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->Mr:Labcd/Qs;

    const-string v9, "Ljava/lang/Byte;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->U2:Labcd/Qs;

    const-string v9, "Ljava/lang/Character;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->a8:Labcd/Qs;

    const-string v9, "Ljava/lang/Double;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->lg:Labcd/Qs;

    const-string v9, "Ljava/lang/Float;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->rN:Labcd/Qs;

    const-string v9, "Ljava/lang/Integer;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->er:Labcd/Qs;

    const-string v9, "Ljava/lang/Long;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->yS:Labcd/Qs;

    const-string v9, "Ljava/lang/Short;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->gW:Labcd/Qs;

    const-string v9, "Ljava/lang/Void;"

    invoke-static {v9}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v9

    sput-object v9, Labcd/Qs;->BT:Labcd/Qs;

    invoke-virtual {v0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->vy:Labcd/Qs;

    invoke-virtual {v1}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->P8:Labcd/Qs;

    invoke-virtual {v2}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->ei:Labcd/Qs;

    invoke-virtual {v3}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->nw:Labcd/Qs;

    invoke-virtual {v4}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->SI:Labcd/Qs;

    invoke-virtual {v5}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->KD:Labcd/Qs;

    invoke-virtual {v6}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->ro:Labcd/Qs;

    invoke-virtual {v8}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->cn:Labcd/Qs;

    invoke-virtual {v7}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object v0

    sput-object v0, Labcd/Qs;->sh:Labcd/Qs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Labcd/Qs;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    if-ltz p2, :cond_24

    const/16 v0, 0xb

    if-ge p2, v0, :cond_24

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1c

    iput-object p1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    iput p2, p0, Labcd/Qs;->dx:I

    iput p3, p0, Labcd/Qs;->sG:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Qs;->Sf:Labcd/Qs;

    iput-object p1, p0, Labcd/Qs;->vJ:Labcd/Qs;

    iput-object p1, p0, Labcd/Qs;->g3:Labcd/Qs;

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newAt < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad basicType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Labcd/Qs;)Labcd/Qs;
    .registers 4

    sget-object v0, Labcd/Qs;->j6:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Qs;

    if-eqz v2, :cond_11

    monitor-exit v0

    return-object v2

    :cond_11
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public static DW(Ljava/lang/String;)Labcd/Qs;
    .registers 3

    if-eqz p0, :cond_2a

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static FH(Ljava/lang/String;)Labcd/Qs;
    .registers 2

    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Labcd/Qs;->tp:Labcd/Qs;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_10

    return-object p0

    :cond_b
    invoke-static {p0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object p0

    return-object p0

    :catch_10
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Ljava/lang/String;)Labcd/Qs;
    .registers 8

    sget-object v0, Labcd/Qs;->j6:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Qs;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c3

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_12} :catch_ba
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_12} :catch_b1

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Qs;->Hw()Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_9a

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_9a

    const/4 v0, 0x1

    :goto_36
    if-ge v0, v3, :cond_8e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_77

    const/16 v6, 0x29

    if-eq v5, v6, :cond_77

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_77

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_51

    if-eq v5, v4, :cond_77

    if-eq v5, v1, :cond_77

    goto :goto_5d

    :cond_51
    if-eq v0, v2, :cond_60

    if-eq v0, v3, :cond_60

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_60

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    new-instance v0, Labcd/Qs;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    move-result-object p0

    return-object p0

    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_b1
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_ba
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_c3
    move-exception p0

    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    goto :goto_c7

    :goto_c6
    throw p0

    :goto_c7
    goto :goto_c6
.end method


# virtual methods
.method public BT()Z
    .registers 2

    iget v0, p0, Labcd/Qs;->dx:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_7  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_7  #00000008
    .end packed-switch
.end method

.method public Hw()Labcd/Qs;
    .registers 4

    iget-object v0, p0, Labcd/Qs;->Sf:Labcd/Qs;

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Qs;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Labcd/Qs;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    move-result-object v0

    iput-object v0, p0, Labcd/Qs;->Sf:Labcd/Qs;

    :cond_24
    iget-object v0, p0, Labcd/Qs;->Sf:Labcd/Qs;

    return-object v0
.end method

.method public J8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    return-object v0
.end method

.method public Mr()I
    .registers 4

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public P8()Z
    .registers 2

    iget v0, p0, Labcd/Qs;->sG:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public U2()Labcd/Qs;
    .registers 3

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    return-object p0

    :cond_13
    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    return-object v0
.end method

.method public bridge synthetic U2()Labcd/Rs;
    .registers 2

    invoke-virtual {p0}, Labcd/Qs;->U2()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public VH()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/Qs;->ef:Ljava/lang/String;

    if-nez v0, :cond_40

    invoke-virtual {p0}, Labcd/Qs;->vy()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    goto :goto_24

    :cond_18
    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Labcd/Qs;->ef:Ljava/lang/String;

    goto :goto_40

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_40
    iget-object v0, p0, Labcd/Qs;->ef:Ljava/lang/String;

    return-object v0
.end method

.method public Ws()Labcd/Qs;
    .registers 3

    iget-object v0, p0, Labcd/Qs;->g3:Labcd/Qs;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialized type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Zo()I
    .registers 3

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0
.end method

.method public a8()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 4

    iget v0, p0, Labcd/Qs;->dx:I

    packed-switch v0, :pswitch_data_50

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    return-object v0

    :pswitch_8  #0x9
    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Qs;->we()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    invoke-virtual {p0}, Labcd/Qs;->VH()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_35  #0x8
    const-string v0, "short"

    return-object v0

    :pswitch_38  #0x7
    const-string v0, "long"

    return-object v0

    :pswitch_3b  #0x6
    const-string v0, "int"

    return-object v0

    :pswitch_3e  #0x5
    const-string v0, "float"

    return-object v0

    :pswitch_41  #0x4
    const-string v0, "double"

    return-object v0

    :pswitch_44  #0x3
    const-string v0, "char"

    return-object v0

    :pswitch_47  #0x2
    const-string v0, "byte"

    return-object v0

    :pswitch_4a  #0x1
    const-string v0, "boolean"

    return-object v0

    :pswitch_4d  #0x0
    const-string v0, "void"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d  #00000000
        :pswitch_4a  #00000001
        :pswitch_47  #00000002
        :pswitch_44  #00000003
        :pswitch_41  #00000004
        :pswitch_3e  #00000005
        :pswitch_3b  #00000006
        :pswitch_38  #00000007
        :pswitch_35  #00000008
        :pswitch_8  #00000009
    .end packed-switch
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Qs;

    invoke-virtual {p0, p1}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Labcd/Qs;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    check-cast p1, Labcd/Qs;

    iget-object p1, p1, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public er()Z
    .registers 3

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public gW()Z
    .registers 4

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    const/4 v2, 0x6

    if-eq v0, v2, :cond_14

    const/16 v2, 0x8

    if-eq v0, v2, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    return v1
.end method

.method public getType()Labcd/Qs;
    .registers 1

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j3()I
    .registers 2

    iget v0, p0, Labcd/Qs;->dx:I

    return v0
.end method

.method public j6(Labcd/Qs;)I
    .registers 3

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    iget-object p1, p1, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j6(I)Labcd/Qs;
    .registers 5

    if-ltz p1, :cond_68

    invoke-virtual {p0}, Labcd/Qs;->vy()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Labcd/Qs;->P8()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Qs;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2, p1}, Labcd/Qs;-><init>(Ljava/lang/String;II)V

    iput-object p0, v1, Labcd/Qs;->g3:Labcd/Qs;

    invoke-static {v1}, Labcd/Qs;->DW(Labcd/Qs;)Labcd/Qs;

    move-result-object p1

    return-object p1

    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already uninitialized: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a reference type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newAt < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lg()Z
    .registers 4

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public rN()Z
    .registers 2

    invoke-virtual {p0}, Labcd/Qs;->lg()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    invoke-virtual {p0, v0}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    return-object v0
.end method

.method public vy()Z
    .registers 3

    iget v0, p0, Labcd/Qs;->dx:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public we()Labcd/Qs;
    .registers 3

    iget-object v0, p0, Labcd/Qs;->vJ:Labcd/Qs;

    if-nez v0, :cond_36

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Labcd/Qs;->cb:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    iput-object v0, p0, Labcd/Qs;->vJ:Labcd/Qs;

    goto :goto_36

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an array type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Qs;->cb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    :goto_36
    iget-object v0, p0, Labcd/Qs;->vJ:Labcd/Qs;

    return-object v0
.end method

.method public yS()Z
    .registers 3

    iget v0, p0, Labcd/Qs;->dx:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
