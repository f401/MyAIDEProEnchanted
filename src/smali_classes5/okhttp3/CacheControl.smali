.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    iput-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_f

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_18

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    if-eq v1, v2, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v2, :cond_3e

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_47

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_50

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_59

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v2, :cond_6c

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v2, :cond_7f

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_88

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_91

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_9a

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a3

    const-string v0, ""

    :goto_a2
    return-object v0

    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a2
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v23

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v22, v15

    :goto_16
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1aa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    const-string v18, "Cache-Control"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8f

    if-eqz v2, :cond_8d

    :cond_36
    const/16 v16, 0x0

    :goto_38
    const/16 v17, 0x0

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v11

    :goto_42
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_9f

    const-string v5, "=,;"

    move/from16 v0, v17

    invoke-static {v15, v0, v5}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    move/from16 v0, v17

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_72

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x2c

    if-eq v6, v11, :cond_72

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x3b

    if-ne v6, v11, :cond_ad

    :cond_72
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_75
    const-string v11, "no-cache"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_df

    const/4 v3, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    :goto_84
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v10

    move/from16 v20, v11

    goto :goto_42

    :cond_8d
    move-object v2, v15

    goto :goto_38

    :cond_8f
    const-string v18, "Pragma"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_36

    move/from16 v18, v5

    move/from16 v21, v11

    move/from16 v20, v10

    move/from16 v19, v6

    :cond_9f
    add-int/lit8 v15, v22, 0x1

    move/from16 v22, v15

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v10, v20

    move/from16 v11, v21

    goto/16 :goto_16

    :cond_ad
    add-int/lit8 v5, v5, 0x1

    invoke-static {v15, v5}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_d0

    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x22

    if-ne v5, v11, :cond_d0

    add-int/lit8 v5, v6, 0x1

    const-string v6, "\""

    invoke-static {v15, v5, v6}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v15, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v11, 0x1

    goto :goto_75

    :cond_d0
    const-string v5, ",;"

    invoke-static {v15, v6, v5}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_75

    :cond_df
    const-string v11, "no-store"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ef

    const/4 v4, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto :goto_84

    :cond_ef
    const-string v11, "max-age"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_103

    const/4 v10, -0x1

    invoke-static {v6, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v18

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto :goto_84

    :cond_103
    const-string v11, "s-maxage"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_118

    const/4 v10, -0x1

    invoke-static {v6, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v19

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_118
    const-string v11, "private"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_129

    const/4 v7, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_129
    const-string v11, "public"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13a

    const/4 v8, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_13a
    const-string v11, "must-revalidate"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14b

    const/4 v9, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_14b
    const-string v11, "max-stale"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_162

    const v10, 0x7fffffff

    invoke-static {v6, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v20

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_162
    const-string v11, "min-fresh"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_177

    const/4 v10, -0x1

    invoke-static {v6, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v21

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_177
    const-string v6, "only-if-cached"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_188

    const/4 v12, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_188
    const-string v6, "no-transform"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_199

    const/4 v13, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_199
    const-string v6, "immutable"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v14, 0x1

    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84

    :cond_1aa
    if-nez v16, :cond_1b3

    const/4 v15, 0x0

    :goto_1ad
    new-instance v2, Lokhttp3/CacheControl;

    invoke-direct/range {v2 .. v15}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v2

    :cond_1b3
    move-object v15, v2

    goto :goto_1ad

    :cond_1b5
    move/from16 v11, v20

    move/from16 v10, v19

    move/from16 v6, v18

    goto/16 :goto_84
.end method


# virtual methods
.method public immutable()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .registers 2

    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .registers 2

    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .registers 2

    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .registers 2

    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_4
.end method
