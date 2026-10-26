.class public final enum Lcom/aide/uidesigner/N$b;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/uidesigner/N$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/uidesigner/N$b;

.field public static final enum EQ:Lcom/aide/uidesigner/N$b;

.field public static final enum FH:Lcom/aide/uidesigner/N$b;

.field public static final enum Hw:Lcom/aide/uidesigner/N$b;

.field public static final enum J0:Lcom/aide/uidesigner/N$b;

.field public static final enum J8:Lcom/aide/uidesigner/N$b;

.field public static final enum QX:Lcom/aide/uidesigner/N$b;

.field public static final enum VH:Lcom/aide/uidesigner/N$b;

.field public static final enum Ws:Lcom/aide/uidesigner/N$b;

.field private static final XL:[Lcom/aide/uidesigner/N$b;

.field public static final enum Zo:Lcom/aide/uidesigner/N$b;

.field private static aM:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum gn:Lcom/aide/uidesigner/N$b;

.field private static j3:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/uidesigner/N$b;

.field public static final enum tp:Lcom/aide/uidesigner/N$b;

.field public static final enum u7:Lcom/aide/uidesigner/N$b;

.field public static final enum v5:Lcom/aide/uidesigner/N$b;

.field public static final enum we:Lcom/aide/uidesigner/N$b;


# instance fields
.field public Mr:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21
    .annotation runtime Labcd/su;
        method = -0x20b0b78bada6fe89L
    .end annotation

    :try_start_0
    const-class v2, Lcom/aide/uidesigner/N$b;

    const-wide v4, -0xff3be2c7007e0d0L    # -5.4837140560048964E231

    const-wide v6, -0xff3be2c7007e0d0L    # -5.4837140560048964E231

    invoke-static {v2, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v2, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x11ca34bb9f67620L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/aide/uidesigner/N$b;

    const-string v3, "IntConstant"

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v5}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    new-instance v3, Lcom/aide/uidesigner/N$b;

    const-string v4, "EnumConstant"

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Enum;

    invoke-direct {v3, v4, v5, v6}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    new-instance v4, Lcom/aide/uidesigner/N$b;

    const-string v5, "LayoutSize"

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v7}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    new-instance v5, Lcom/aide/uidesigner/N$b;

    const-string v6, "Size"

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v5, v6, v7, v8}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    new-instance v6, Lcom/aide/uidesigner/N$b;

    const-string v7, "FloatSize"

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v7, v8, v9}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    new-instance v7, Lcom/aide/uidesigner/N$b;

    const-string v8, "TextSize"

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v7, v8, v9, v10}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/aide/uidesigner/N$b;->Zo:Lcom/aide/uidesigner/N$b;

    new-instance v8, Lcom/aide/uidesigner/N$b;

    const-string v9, "Text"

    const/4 v10, 0x6

    const-class v11, Ljava/lang/CharSequence;

    invoke-direct {v8, v9, v10, v11}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    new-instance v9, Lcom/aide/uidesigner/N$b;

    const-string v10, "Float"

    const/4 v11, 0x7

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v9, v10, v11, v12}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    new-instance v10, Lcom/aide/uidesigner/N$b;

    const-string v11, "Int"

    const/16 v12, 0x8

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v10, v11, v12, v13}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    new-instance v11, Lcom/aide/uidesigner/N$b;

    const-string v12, "Bool"

    const/16 v13, 0x9

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v11, v12, v13, v14}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    new-instance v12, Lcom/aide/uidesigner/N$b;

    const-string v13, "ID"

    const/16 v14, 0xa

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v12, v13, v14, v15}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    new-instance v13, Lcom/aide/uidesigner/N$b;

    const-string v14, "Color"

    const/16 v15, 0xb

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v13 .. v16}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    new-instance v14, Lcom/aide/uidesigner/N$b;

    const-string v15, "Drawable"

    const/16 v16, 0xc

    const-class v17, Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v14 .. v17}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    new-instance v15, Lcom/aide/uidesigner/N$b;

    const-string v16, "DrawableResource"

    const/16 v17, 0xd

    const-class v18, Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v15 .. v18}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v15, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    new-instance v16, Lcom/aide/uidesigner/N$b;

    const-string v17, "TextAppearance"

    const/16 v18, 0xe

    const-class v19, Ljava/lang/String;

    invoke-direct/range {v16 .. v19}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v16, Lcom/aide/uidesigner/N$b;->Ws:Lcom/aide/uidesigner/N$b;

    new-instance v17, Lcom/aide/uidesigner/N$b;

    const-string v18, "Event"

    const/16 v19, 0xf

    const-class v20, Ljava/lang/CharSequence;

    invoke-direct/range {v17 .. v20}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v17, Lcom/aide/uidesigner/N$b;->QX:Lcom/aide/uidesigner/N$b;

    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [Lcom/aide/uidesigner/N$b;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    const/4 v2, 0x1

    aput-object v3, v18, v2

    const/4 v2, 0x2

    aput-object v4, v18, v2

    const/4 v2, 0x3

    aput-object v5, v18, v2

    const/4 v2, 0x4

    aput-object v6, v18, v2

    const/4 v2, 0x5

    aput-object v7, v18, v2

    const/4 v2, 0x6

    aput-object v8, v18, v2

    const/4 v2, 0x7

    aput-object v9, v18, v2

    const/16 v2, 0x8

    aput-object v10, v18, v2

    const/16 v2, 0x9

    aput-object v11, v18, v2

    const/16 v2, 0xa

    aput-object v12, v18, v2

    const/16 v2, 0xb

    aput-object v13, v18, v2

    const/16 v2, 0xc

    aput-object v14, v18, v2

    const/16 v2, 0xd

    aput-object v15, v18, v2

    const/16 v2, 0xe

    aput-object v16, v18, v2

    const/16 v2, 0xf

    aput-object v17, v18, v2

    sput-object v18, Lcom/aide/uidesigner/N$b;->XL:[Lcom/aide/uidesigner/N$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v3, :cond_1

    const-wide v4, 0x11ca34bb9f67620L

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v2
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 10
    .annotation runtime Labcd/su;
        method = -0x101b0c00b3d99d45L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-wide v8, -0x7c992cb66f5be70L    # -1.184784158887918E271

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x7c992cb66f5be70L    # -1.184784158887918E271

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/uidesigner/N$b;->Mr:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/uidesigner/N$b;
    .locals 6

    const-wide v4, 0x484a2511112c480L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x484a2511112c480L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/uidesigner/N$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/N$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/uidesigner/N$b;
    .locals 6

    const-wide v4, -0x128591ddcd87beb0L    # -2.332477500459866E219

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x128591ddcd87beb0L    # -2.332477500459866E219

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/uidesigner/N$b;->XL:[Lcom/aide/uidesigner/N$b;

    invoke-virtual {v0}, [Lcom/aide/uidesigner/N$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/uidesigner/N$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
