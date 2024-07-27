.class Ltv/ouya/console/api/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/d$a;,
        Ltv/ouya/console/api/d$b;,
        Ltv/ouya/console/api/d$c;,
        Ltv/ouya/console/api/d$d;,
        Ltv/ouya/console/api/d$e;
    }
.end annotation


# static fields
.field private static final j6:Ljava/lang/String; = "d"


# instance fields
.field private final DW:Ljava/lang/String;

.field private FH:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ltv/ouya/console/api/d$e;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NOT_FOUND"

    iput-object v0, p0, Ltv/ouya/console/api/d;->DW:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    return-void
.end method

.method private DW(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NOT_FOUND"

    goto :goto_0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 16

    const-string v1, "button_is_axis"

    const-string v2, "axis_remap"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "controller"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "controller"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    new-instance v7, Ltv/ouya/console/api/d$e;

    invoke-direct {v7, p0}, Ltv/ouya/console/api/d$e;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v0, "alias"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v9, Ltv/ouya/console/api/d$a;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Ltv/ouya/console/api/d$a;-><init>(Ltv/ouya/console/api/d;Ltv/ouya/console/api/c;)V

    const-string v10, "name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ltv/ouya/console/api/d;->j6(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Ltv/ouya/console/api/d$a;->j6:I

    const-string v10, "friendly_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ltv/ouya/console/api/d;->j6(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Ltv/ouya/console/api/d$a;->DW:I

    const-string v10, "fallback"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "fallback"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v9, Ltv/ouya/console/api/d$a;->FH:Z

    :cond_2
    iget-object v4, v7, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    iget v10, v9, Ltv/ouya/console/api/d$a;->j6:I

    invoke-virtual {v4, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    iget v10, v9, Ltv/ouya/console/api/d$a;->j6:I

    invoke-virtual {v4, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v4, v9, Ltv/ouya/console/api/d$a;->FH:Z

    if-eqz v4, :cond_3

    iput-object v7, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "axis_exclude_source"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "axis_exclude_source"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iget-object v9, v7, Ltv/ouya/console/api/d$e;->DW:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v4, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    new-instance v4, Ltv/ouya/console/api/d$b;

    invoke-direct {v4, p0}, Ltv/ouya/console/api/d$b;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "source_axis"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Ltv/ouya/console/api/d$b;->j6:I

    const-string v10, "destination_axis"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Ltv/ouya/console/api/d$b;->DW:I

    iget-object v9, v7, Ltv/ouya/console/api/d$e;->FH:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    new-instance v4, Ltv/ouya/console/api/d$d;

    invoke-direct {v4, p0}, Ltv/ouya/console/api/d$d;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "source_axis"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Ltv/ouya/console/api/d$d;->j6:I

    const-string v10, "action_down_max"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v4, Ltv/ouya/console/api/d$d;->DW:F

    const-string v10, "action_down_min"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v4, Ltv/ouya/console/api/d$d;->FH:F

    const-string v10, "destination_keycode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Ltv/ouya/console/api/d$d;->Hw:I

    iget-object v9, v7, Ltv/ouya/console/api/d$e;->v5:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move-object v3, v1

    move-object v4, v2

    const-string v0, "button"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "button"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    new-instance v8, Ltv/ouya/console/api/d$c;

    invoke-direct {v8, p0}, Ltv/ouya/console/api/d$c;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "source_keycode"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Ltv/ouya/console/api/d$c;->j6:I

    const-string v9, "destination_keycode"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "exclude_source"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "exclude_source"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_8

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    iget-object v12, v8, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iput v9, v8, Ltv/ouya/console/api/d$c;->DW:I

    iget-object v0, v7, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    iget v9, v8, Ltv/ouya/console/api/d$c;->j6:I

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v6, 0x1

    move-object v2, v4

    move v6, v0

    move-object v1, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ltv/ouya/console/api/d;->j6:Ljava/lang/String;

    const-string v2, "Failed to load input json: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method j6(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j6(Ltv/ouya/console/api/d$e;I)Ltv/ouya/console/api/d$c;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/d$c;

    goto :goto_0
.end method

.method public j6(I)Ltv/ouya/console/api/d$e;
    .registers 7

    iget-object v0, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v3, Ltv/ouya/console/api/d;->j6:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using controller fallback="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    iget-object v0, v0, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/d$a;

    iget v0, v0, Ltv/ouya/console/api/d$a;->j6:I

    invoke-direct {p0, v0}, Ltv/ouya/console/api/d;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/d$e;

    goto :goto_1
.end method
