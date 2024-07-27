.class public final Lcom/google/android/gms/internal/ads/AF;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:I

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private final VH:I

.field private final Zo:I

.field private final j6:Lcom/google/android/gms/internal/ads/qF;

.field private final v5:Z


# direct methods
.method public constructor <init>(III)V
    .registers 6

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/AF;->DW:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/AF;->v5:Z

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/AF;->Zo:I

    :goto_0
    if-gtz p3, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/AF;->VH:I

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zF;

    iget v1, p0, Lcom/google/android/gms/internal/ads/AF;->Zo:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zF;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/AF;->j6:Lcom/google/android/gms/internal/ads/qF;

    return-void

    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/AF;->Zo:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/ads/AF;->VH:I

    goto :goto_1
.end method


# virtual methods
.method public final j6(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/pF;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/BF;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/BF;-><init>(Lcom/google/android/gms/internal/ads/AF;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pF;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pF;->v5()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_1
    array-length v2, v7

    if-ge v0, v2, :cond_f

    aget-object v5, v7, v0

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gt v4, v9, :cond_4

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_2

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v9, 0x20

    if-eq v2, v9, :cond_3

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x73

    if-eq v9, v10, :cond_0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v9, 0x53

    if-ne v2, v9, :cond_3

    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eq v4, v2, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v9, 0x20

    if-ne v2, v9, :cond_3

    :cond_1
    const/16 v2, 0x20

    invoke-virtual {v8, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v3, v4

    :goto_3
    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x20

    invoke-virtual {v8, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_7

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/AF;->Hw:Ljava/lang/String;

    :goto_5
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uF;->j6(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    array-length v2, v5

    iget v3, p0, Lcom/google/android/gms/internal/ads/AF;->VH:I

    if-lt v2, v3, :cond_e

    const/4 v2, 0x0

    :goto_6
    array-length v3, v5

    if-ge v2, v3, :cond_d

    const-string v3, ""

    const/4 v4, 0x0

    :goto_7
    iget v8, p0, Lcom/google/android/gms/internal/ads/AF;->VH:I

    if-ge v4, v8, :cond_b

    add-int v8, v2, v4

    array-length v9, v5

    if-lt v8, v9, :cond_8

    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_d

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/AF;->DW:I

    if-lt v3, v4, :cond_c

    :cond_5
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    move-object v2, v5

    goto :goto_5

    :cond_8
    if-lez v4, :cond_9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aget-object v3, v5, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/AF;->DW:I

    if-ge v2, v3, :cond_5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/tF;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/tF;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/AF;->FH:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/AF;->j6:Lcom/google/android/gms/internal/ads/qF;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qF;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/tF;->j6([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tF;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
