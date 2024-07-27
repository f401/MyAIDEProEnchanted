.class final Lcom/google/android/gms/internal/ads/Yt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/android/gms/internal/ads/_t",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Yt;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/iv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/iv",
            "<TFieldDescriptorType;",
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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iv;->j6(I)Lcom/google/android/gms/internal/ads/iv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Yt;->Zo()V

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Zt;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/ku;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ku;->DW()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->EQ(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->Zo(J)I

    move-result v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->gn(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->gn(J)I

    move-result v0

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->tp(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto :goto_0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->DW([B)I

    move-result v0

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yt;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/yt;)I

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/su;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/su;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/wu;)I

    move-result v0

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Lcom/google/android/gms/internal/ads/Pu;)I

    move-result v0

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->DW(Lcom/google/android/gms/internal/ads/Pu;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(Z)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->u7(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->VH(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->Zo(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->v5(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->Hw(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->DW(D)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/_t",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->we(I)I

    move-result v0

    add-int/2addr v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    :cond_3
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method private final DW(Ljava/util/Map$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/su;

    if-nez v2, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v2, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/Vu;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/google/android/gms/internal/ads/Vu;

    check-cast v1, Lcom/google/android/gms/internal/ads/Vu;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/_t;->j6(Lcom/google/android/gms/internal/ads/Vu;Lcom/google/android/gms/internal/ads/Vu;)Lcom/google/android/gms/internal/ads/Vu;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Pu;->v5()Lcom/google/android/gms/internal/ads/Qu;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/_t;->j6(Lcom/google/android/gms/internal/ads/Qu;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Qu;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Qu;->we()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->FH()Lcom/google/android/gms/internal/ads/Pu;

    const/4 v0, 0x0

    throw v0
.end method

.method private static FH(Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
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

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->EQ()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/su;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/su;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Ot;->DW(ILcom/google/android/gms/internal/ads/wu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->DW()I

    move-result v0

    check-cast v1, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ot;->Hw(ILcom/google/android/gms/internal/ads/Pu;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static VH()Lcom/google/android/gms/internal/ads/Yt;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/_t",
            "<TT;>;>()",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Yt;->j6:Lcom/google/android/gms/internal/ads/Yt;

    return-object v0
.end method

.method static j6(Lcom/google/android/gms/internal/ads/Nv;ILjava/lang/Object;)I
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ot;->v5(I)I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ads/Nv;->tp:Lcom/google/android/gms/internal/ads/Nv;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Lcom/google/android/gms/internal/ads/Pu;)Z

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/_t;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/su;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->FH()Lcom/google/android/gms/internal/ads/Pu;

    const/4 v0, 0x0

    throw v0
.end method

.method private static j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/Vu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/Vu;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vu;->VH()Lcom/google/android/gms/internal/ads/Vu;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/Zt;->j6:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nv;->Hw()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    return-void

    :pswitch_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/Pu;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/su;

    if-eqz v1, :cond_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_2
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/yt;

    if-nez v1, :cond_1

    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_1
    nop

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/su;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/iv;->j6(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/_t;->gn()Lcom/google/android/gms/internal/ads/Nv;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/Nv;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static j6(Ljava/util/Map$Entry;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->u7()Lcom/google/android/gms/internal/ads/Sv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/Sv;->u7:Lcom/google/android/gms/internal/ads/Sv;

    if-ne v3, v4, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/_t;->tp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ru;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/Pu;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/Pu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ru;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/su;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_0
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

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final Zo()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->FH:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->DW()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->FH:Z

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 5

    new-instance v2, Lcom/google/android/gms/internal/ads/Yt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Yt;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/Yt;->j6(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Yt;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Yt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/iv;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final gn()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/_t;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Yt;->DW(Lcom/google/android/gms/internal/ads/_t;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    return v2
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
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->v5()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vu;-><init>(Ljava/util/Iterator;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->v5()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Yt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Yt",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Yt;->DW(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Yt;->DW(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final u7()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->FH()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iv;->DW(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yt;->FH(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->Hw()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Yt;->FH(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final v5()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yt;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/vu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iv;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/vu;-><init>(Ljava/util/Iterator;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yt;->DW:Lcom/google/android/gms/internal/ads/iv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iv;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
