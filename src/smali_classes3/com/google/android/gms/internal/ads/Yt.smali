.class final Lcom/google/android/gms/internal/ads/Yt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/android/gms/internal/ads/_t<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Yt;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/iv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/iv<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Z

.field private Hw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Yt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Yt;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yt;->j6:Lcom/google/android/gms/internal/ads/Yt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iv;->j6(I)Lcom/google/android/gms/internal/ads/iv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/iv;->j6(I)Lcom/google/android/gms/internal/ads/iv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Yt;->Zo()V

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Zt;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13  #0x12
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz p0, :cond_22

    check-cast p1, Lcom/google/android/gms/internal/ads/ku;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ku;->DW()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result p0

    return p0

    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result p0

    return p0

    :pswitch_2d  #0x11
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->Zo(J)I

    move-result p0

    return p0

    :pswitch_38  #0x10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->gn(I)I

    move-result p0

    return p0

    :pswitch_43  #0xf
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->gn(J)I

    move-result p0

    return p0

    :pswitch_4e  #0xe
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->tp(I)I

    move-result p0

    return p0

    :pswitch_59  #0xd
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result p0

    return p0

    :pswitch_64  #0xc
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/yt;

    if-eqz p0, :cond_6f

    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result p0

    return p0

    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->DW([B)I

    move-result p0

    return p0

    :pswitch_76  #0xb
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/yt;

    if-eqz p0, :cond_81

    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result p0

    return p0

    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_88  #0xa
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/su;

    if-eqz p0, :cond_93

    check-cast p1, Lcom/google/android/gms/internal/ads/su;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/wu;)I

    move-result p0

    return p0

    :cond_93
    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/Pu;)I

    move-result p0

    return p0

    :pswitch_9a  #0x9
    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->DW(Lcom/google/android/gms/internal/ads/Pu;)I

    move-result p0

    return p0

    :pswitch_a1  #0x8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->DW(Z)I

    move-result p0

    return p0

    :pswitch_ac  #0x7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->u7(I)I

    move-result p0

    return p0

    :pswitch_b7  #0x6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->VH(J)I

    move-result p0

    return p0

    :pswitch_c2  #0x5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->Zo(I)I

    move-result p0

    return p0

    :pswitch_cd  #0x4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->v5(J)I

    move-result p0

    return p0

    :pswitch_d8  #0x3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->Hw(J)I

    move-result p0

    return p0

    :pswitch_e3  #0x2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Ot;->DW(F)I

    move-result p0

    return p0

    :pswitch_ee  #0x1
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Ot;->DW(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee  #00000001
        :pswitch_e3  #00000002
        :pswitch_d8  #00000003
        :pswitch_cd  #00000004
        :pswitch_c2  #00000005
        :pswitch_b7  #00000006
        :pswitch_ac  #00000007
        :pswitch_a1  #00000008
        :pswitch_9a  #00000009
        :pswitch_88  #0000000a
        :pswitch_76  #0000000b
        :pswitch_64  #0000000c
        :pswitch_59  #0000000d
        :pswitch_4e  #0000000e
        :pswitch_43  #0000000f
        :pswitch_38  #00000010
        :pswitch_2d  #00000011
        :pswitch_13  #00000012
    .end packed-switch
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/_t<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result p0

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_36

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    :cond_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->we(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3a

    :cond_4a
    return v2

    :cond_4b
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final DW(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/su;

    if-nez v1, :cond_85

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v1, v2, :cond_7b

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_58
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/Vu;

    if-eqz v2, :cond_65

    check-cast v1, Lcom/google/android/gms/internal/ads/Vu;

    check-cast p1, Lcom/google/android/gms/internal/ads/Vu;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/_t;->j6(Lcom/google/android/gms/internal/ads/Vu;Lcom/google/android/gms/internal/ads/Vu;)Lcom/google/android/gms/internal/ads/Vu;

    move-result-object p1

    goto :goto_75

    :cond_65
    check-cast v1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Pu;->v5()Lcom/google/android/gms/internal/ads/Qu;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/_t;->j6(Lcom/google/android/gms/internal/ads/Qu;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Qu;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qu;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    :goto_75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->FH()Lcom/google/android/gms/internal/ads/Pu;

    const/4 p1, 0x0

    goto :goto_8b

    :goto_8a
    throw p1

    :goto_8b
    goto :goto_8a
.end method

.method private static FH(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v2, v3, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result v2

    if-nez v2, :cond_3a

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/su;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result p0

    if-eqz v0, :cond_33

    check-cast v1, Lcom/google/android/gms/internal/ads/su;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILcom/google/android/gms/internal/ads/wu;)I

    move-result p0

    return p0

    :cond_33
    check-cast v1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Ot;->Hw(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result p0

    return p0

    :cond_3a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static VH()Lcom/google/android/gms/internal/ads/Yt;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/_t<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/ads/Yt<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Yt;->j6:Lcom/google/android/gms/internal/ads/Yt;

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/Nv;->tp:Lcom/google/android/gms/internal/ads/Nv;

    if-ne p0, v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Lcom/google/android/gms/internal/ads/Pu;)Z

    shl-int/lit8 p1, p1, 0x1

    :cond_10
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/su;

    if-nez v0, :cond_b

    return-object p1

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->FH()Lcom/google/android/gms/internal/ads/Pu;

    const/4 p1, 0x0

    throw p1
.end method

.method private static j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Vu;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/android/gms/internal/ads/Vu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vu;->VH()Lcom/google/android/gms/internal/ads/Vu;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_1a

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1a
    return-object p0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/Zt;->j6:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nv;->Hw()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_4e

    goto :goto_41

    :pswitch_13  #0x9
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/Pu;

    if-nez p0, :cond_2d

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/su;

    if-eqz p0, :cond_41

    goto :goto_2d

    :pswitch_1c  #0x8
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_2d

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz p0, :cond_41

    goto :goto_2d

    :pswitch_25  #0x7
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/yt;

    if-nez p0, :cond_2d

    instance-of p0, p1, [B

    if-eqz p0, :cond_41

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    goto :goto_42

    :pswitch_2f  #0x6
    instance-of p0, p1, Ljava/lang/String;

    goto :goto_42

    :pswitch_32  #0x5
    instance-of p0, p1, Ljava/lang/Boolean;

    goto :goto_42

    :pswitch_35  #0x4
    instance-of p0, p1, Ljava/lang/Double;

    goto :goto_42

    :pswitch_38  #0x3
    instance-of p0, p1, Ljava/lang/Float;

    goto :goto_42

    :pswitch_3b  #0x2
    instance-of p0, p1, Ljava/lang/Long;

    goto :goto_42

    :pswitch_3e  #0x1
    instance-of p0, p1, Ljava/lang/Integer;

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p0, 0x0

    :goto_42
    if-eqz p0, :cond_45

    return-void

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_25  #00000007
        :pswitch_1c  #00000008
        :pswitch_13  #00000009
    .end packed-switch
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v0

    if-eqz v0, :cond_33

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V

    goto :goto_19

    :cond_29
    move-object p2, v0

    goto :goto_3a

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V

    :goto_3a
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/su;

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static j6(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_33

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ru;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_33
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v0, :cond_40

    check-cast p0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ru;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4d

    return v1

    :cond_40
    instance-of p0, p0, Lcom/google/android/gms/internal/ads/su;

    if-eqz p0, :cond_45

    return v3

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    return v3
.end method


# virtual methods
.method final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->FH:Z

    return v0
.end method

.method public final Hw()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public final Zo()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->FH:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->DW()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->FH:Z

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Yt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Yt;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Yt;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/Yt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final gn()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2c

    :cond_48
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->hashCode()I

    move-result v0

    return v0
.end method

.method final j6()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->v5()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vu;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->v5()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Yt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Yt<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Yt;->DW(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->DW(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final u7()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->FH(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->FH(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method

.method public final v5()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vu;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
