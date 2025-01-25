.class public Lcom/google/android/gms/common/server/response/SafeParcelResponse;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/server/response/SafeParcelResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Landroid/os/Parcel;

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/common/server/response/zak;

.field private VH:I

.field private Zo:I

.field private final j6:I

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/server/response/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/common/server/response/zak;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Parcel;

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW:Landroid/os/Parcel;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->FH:I

    iput-object p3, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Hw:Lcom/google/android/gms/common/server/response/zak;

    if-nez p3, :cond_16

    const/4 p2, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p3}, Lcom/google/android/gms/common/server/response/zak;->FH()Ljava/lang/String;

    move-result-object p2

    :goto_1a
    iput-object p2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->v5:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Zo:I

    return-void
.end method

.method private final DW()Landroid/os/Parcel;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Zo:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_1a

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW:Landroid/os/Parcel;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->VH:I

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->VH:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Zo:I

    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW:Landroid/os/Parcel;

    return-object v0
.end method

.method private final DW(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH:Z

    if-eqz v0, :cond_2b

    check-cast p3, Ljava/util/ArrayList;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_25

    if-eqz v1, :cond_19

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget v2, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2b
    iget p2, p2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    return-void
.end method

.method private static j6(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .registers 4

    const-string v0, "\""

    packed-switch p1, :pswitch_data_62

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p2, 0x1a

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown type = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1e  #0xb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Method does not accept concrete type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_26  #0xa
    check-cast p2, Ljava/util/HashMap;

    invoke-static {p0, p2}, Lcom/google/android/gms/common/util/m;->j6(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    return-void

    :pswitch_2c  #0x9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/common/util/c;->DW([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_3c  #0x8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/common/util/c;->j6([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_4c  #0x7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/l;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_5e  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_5e  #00000001
        :pswitch_5e  #00000002
        :pswitch_5e  #00000003
        :pswitch_5e  #00000004
        :pswitch_5e  #00000005
        :pswitch_5e  #00000006
        :pswitch_4c  #00000007
        :pswitch_3c  #00000008
        :pswitch_2c  #00000009
        :pswitch_26  #0000000a
        :pswitch_1e  #0000000b
    .end packed-switch
.end method

.method private final j6(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_27
    const/16 p2, 0x7b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_32
    :goto_32
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p2, :cond_256

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_32

    const-string v5, ","

    if-eqz v2, :cond_4f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_10c

    iget v2, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    packed-switch v2, :pswitch_data_27e

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x24

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown field out type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_8d  #0xb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method does not accept concrete type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_95  #0xa
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_ba
    invoke-static {v4, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_107

    :pswitch_bf  #0x8, 0x9
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->VH(Landroid/os/Parcel;I)[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_107

    :pswitch_c8  #0x7
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_103

    :pswitch_cd  #0x6
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_103

    :pswitch_d6  #0x5
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_103

    :pswitch_db  #0x4
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Mr(Landroid/os/Parcel;I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_103

    :pswitch_e4  #0x3
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a8(Landroid/os/Parcel;I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_103

    :pswitch_ed  #0x2
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_103

    :pswitch_f6  #0x1
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->FH(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_103

    :pswitch_fb  #0x0
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_103
    invoke-static {v4, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_107
    invoke-direct {p0, p1, v4, v2}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_253

    :cond_10c
    iget-boolean v2, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    if-eqz v2, :cond_18e

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    packed-switch v2, :pswitch_data_29a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown field type out."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_122  #0xb
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->J8(Landroid/os/Parcel;I)[Landroid/os/Parcel;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_128
    if-ge v6, v3, :cond_187

    if-lez v6, :cond_12f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12f
    aget-object v8, v2, v6

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw()Ljava/util/Map;

    move-result-object v8

    aget-object v9, v2, v6

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_128

    :pswitch_140  #0x8, 0x9, 0xa
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_148  #0x7
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->QX(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_187

    :pswitch_150  #0x6
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->v5(Landroid/os/Parcel;I)[Z

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[Z)V

    goto :goto_187

    :pswitch_158  #0x5
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_187

    :pswitch_160  #0x4
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->gn(Landroid/os/Parcel;I)[D

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[D)V

    goto :goto_187

    :pswitch_168  #0x3
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->u7(Landroid/os/Parcel;I)[F

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[F)V

    goto :goto_187

    :pswitch_170  #0x2
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->we(Landroid/os/Parcel;I)[J

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[J)V

    goto :goto_187

    :pswitch_178  #0x1
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Hw(Landroid/os/Parcel;I)[Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_187

    :pswitch_180  #0x0
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->tp(Landroid/os/Parcel;I)[I

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/util/b;->j6(Ljava/lang/StringBuilder;[I)V

    :cond_187
    :goto_187
    const-string v2, "]"

    :goto_189
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_253

    :cond_18e
    iget v2, v4, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    packed-switch v2, :pswitch_data_2b6

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown field type out"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_19b  #0xb
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->J0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    goto/16 :goto_253

    :pswitch_1ab  #0xa
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v4, :cond_1d1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/util/l;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1c0

    :cond_1f2
    const-string v2, "}"

    goto :goto_189

    :pswitch_1f5  #0x9
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->VH(Landroid/os/Parcel;I)[B

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/google/android/gms/common/util/c;->DW([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_218

    :pswitch_201  #0x8
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->VH(Landroid/os/Parcel;I)[B

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/google/android/gms/common/util/c;->j6([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_218

    :pswitch_20d  #0x7
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/google/android/gms/common/util/l;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_218
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_21f  #0x6
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_227  #0x5
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_248

    :pswitch_22c  #0x4
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->Mr(Landroid/os/Parcel;I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_234  #0x3
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a8(Landroid/os/Parcel;I)F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_23c  #0x2
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_244  #0x1
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->FH(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v2

    :goto_248
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_253

    :pswitch_24c  #0x0
    invoke-static {p3, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_253
    const/4 v2, 0x1

    goto/16 :goto_32

    :cond_256
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p2, :cond_262

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_262
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Overread allowed size end="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    goto :goto_27c

    :goto_27b
    throw p2

    :goto_27c
    goto :goto_27b

    nop

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_fb  #00000000
        :pswitch_f6  #00000001
        :pswitch_ed  #00000002
        :pswitch_e4  #00000003
        :pswitch_db  #00000004
        :pswitch_d6  #00000005
        :pswitch_cd  #00000006
        :pswitch_c8  #00000007
        :pswitch_bf  #00000008
        :pswitch_bf  #00000009
        :pswitch_95  #0000000a
        :pswitch_8d  #0000000b
    .end packed-switch

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_180  #00000000
        :pswitch_178  #00000001
        :pswitch_170  #00000002
        :pswitch_168  #00000003
        :pswitch_160  #00000004
        :pswitch_158  #00000005
        :pswitch_150  #00000006
        :pswitch_148  #00000007
        :pswitch_140  #00000008
        :pswitch_140  #00000009
        :pswitch_140  #0000000a
        :pswitch_122  #0000000b
    .end packed-switch

    :pswitch_data_2b6
    .packed-switch 0x0
        :pswitch_24c  #00000000
        :pswitch_244  #00000001
        :pswitch_23c  #00000002
        :pswitch_234  #00000003
        :pswitch_22c  #00000004
        :pswitch_227  #00000005
        :pswitch_21f  #00000006
        :pswitch_20d  #00000007
        :pswitch_201  #00000008
        :pswitch_1f5  #00000009
        :pswitch_1ab  #0000000a
        :pswitch_19b  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Converting to JSON does not require this method."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Converting to JSON does not require this method."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Hw:Lcom/google/android/gms/common/server/response/zak;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/zak;->j6(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Hw:Lcom/google/android/gms/common/server/response/zak;

    const-string v1, "Cannot convert to JSON on client side."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Hw:Lcom/google/android/gms/common/server/response/zak;

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/server/response/zak;->j6(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->j6:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->DW()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V

    iget v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->FH:I

    if-eqz v1, :cond_38

    if-eq v1, v2, :cond_35

    if-ne v1, v3, :cond_1c

    goto :goto_35

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid creation type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->Hw:Lcom/google/android/gms/common/server/response/zak;

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
