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
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
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

    if-ltz p1, :cond_13

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_13
    const-string p1, "NOT_FOUND"

    return-object p1
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "exclude_source"

    const-string v3, "fallback"

    const-string v4, "button"

    const-string v5, "axis_exclude_source"

    const-string v6, "controller"

    const-string v7, "button_is_axis"

    const-string v8, "axis_remap"

    if-nez v0, :cond_15

    return-void

    :cond_15
    :try_start_15
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v9, 0x0

    :goto_25
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_19a

    new-instance v10, Ltv/ouya/console/api/d$e;

    invoke-direct {v10, v1}, Ltv/ouya/console/api/d$e;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "alias"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x0

    :goto_3b
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_86

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v15, Ltv/ouya/console/api/d$a;

    const/4 v6, 0x0

    invoke-direct {v15, v1, v6}, Ltv/ouya/console/api/d$a;-><init>(Ltv/ouya/console/api/d;Ltv/ouya/console/api/c;)V

    const-string v6, "name"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ltv/ouya/console/api/d;->j6(Ljava/lang/String;)I

    move-result v6

    iput v6, v15, Ltv/ouya/console/api/d$a;->j6:I

    const-string v6, "friendly_name"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ltv/ouya/console/api/d;->j6(Ljava/lang/String;)I

    move-result v6

    iput v6, v15, Ltv/ouya/console/api/d$a;->DW:I

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v15, Ltv/ouya/console/api/d$a;->FH:Z

    :cond_6f
    iget-object v6, v10, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    iget v14, v15, Ltv/ouya/console/api/d$a;->j6:I

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, v1, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    iget v14, v15, Ltv/ouya/console/api/d$a;->j6:I

    invoke-virtual {v6, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v6, v15, Ltv/ouya/console/api/d$a;->FH:Z

    if-eqz v6, :cond_83

    iput-object v10, v1, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    :cond_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_3b

    :cond_86
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_a4

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v13, 0x0

    :goto_92
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_a4

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    iget-object v15, v10, Ltv/ouya/console/api/d$e;->DW:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v14, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_92

    :cond_a4
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_a8} :catch_192

    const-string v13, "source_axis"

    if-eqz v6, :cond_db

    :try_start_ac
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v14, 0x0

    :goto_b1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_db

    new-instance v15, Ltv/ouya/console/api/d$b;

    invoke-direct {v15, v1}, Ltv/ouya/console/api/d$b;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    move-object/from16 v16, v0

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v15, Ltv/ouya/console/api/d$b;->j6:I

    const-string v0, "destination_axis"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v15, Ltv/ouya/console/api/d$b;->DW:I

    iget-object v0, v10, Ltv/ouya/console/api/d$e;->FH:Ljava/util/Vector;

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    const/4 v12, 0x1

    goto :goto_b1

    :cond_db
    move-object/from16 v16, v0

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_e1} :catch_192

    const-string v6, "destination_keycode"

    if-eqz v0, :cond_12b

    :try_start_e5
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v12, 0x0

    :goto_ea
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_12b

    new-instance v14, Ltv/ouya/console/api/d$d;

    invoke-direct {v14, v1}, Ltv/ouya/console/api/d$d;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v17, v0

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Ltv/ouya/console/api/d$d;->j6:I

    const-string v0, "action_down_max"

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, v14, Ltv/ouya/console/api/d$d;->DW:F

    const-string v0, "action_down_min"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, v14, Ltv/ouya/console/api/d$d;->FH:F

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Ltv/ouya/console/api/d$d;->Hw:I

    iget-object v0, v10, Ltv/ouya/console/api/d$e;->v5:Ljava/util/Vector;

    invoke-virtual {v0, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_ea

    :cond_12b
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    :goto_13a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_188

    new-instance v8, Ltv/ouya/console/api/d$c;

    invoke-direct {v8, v1}, Ltv/ouya/console/api/d$c;-><init>(Ltv/ouya/console/api/d;)V

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "source_keycode"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v8, Ltv/ouya/console/api/d$c;->j6:I

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_177

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v13, 0x0

    :goto_160
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_177

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    iget-object v15, v8, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_160

    :cond_177
    move-object/from16 v17, v0

    const/4 v0, 0x1

    iput v12, v8, Ltv/ouya/console/api/d$c;->DW:I

    iget-object v11, v10, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    iget v12, v8, Ltv/ouya/console/api/d$c;->j6:I

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_183} :catch_192

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    goto :goto_13a

    :cond_188
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_25

    :catch_192
    move-exception v0

    sget-object v2, Ltv/ouya/console/api/d;->j6:Ljava/lang/String;

    const-string v3, "Failed to load input json: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19a
    return-void
.end method

.method j6(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Ltv/ouya/console/api/d;->FH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j6(Ltv/ouya/console/api/d$e;I)Ltv/ouya/console/api/d$c;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p1, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    iget-object p1, p1, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/ouya/console/api/d$c;

    return-object p1
.end method

.method public j6(I)Ltv/ouya/console/api/d$e;
    .registers 6

    iget-object v0, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_41

    iget-object p1, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    if-eqz p1, :cond_3e

    iget-object p1, p1, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_3e

    sget-object v1, Ltv/ouya/console/api/d;->j6:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using controller fallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    iget-object v3, v3, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/ouya/console/api/d$a;

    iget v3, v3, Ltv/ouya/console/api/d$a;->j6:I

    invoke-direct {p0, v3}, Ltv/ouya/console/api/d;->DW(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3e
    iget-object p1, p0, Ltv/ouya/console/api/d;->v5:Ltv/ouya/console/api/d$e;

    return-object p1

    :cond_41
    iget-object v0, p0, Ltv/ouya/console/api/d;->Hw:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/ouya/console/api/d$e;

    return-object p1
.end method
