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
        "Ljava/lang/Enum<",
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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x20b0b78bada6fe89L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x11ca34bb9f67620L

    :try_start_6
    const-class v0, Lcom/aide/uidesigner/N$b;

    const-wide v4, -0xff3be2c7007e0d0L  # -5.4837140560048964E231

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/uidesigner/N$b;

    const-string v4, "IntConstant"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    new-instance v4, Lcom/aide/uidesigner/N$b;

    const-string v5, "EnumConstant"

    const-class v7, Ljava/lang/Enum;

    const/4 v8, 0x1

    invoke-direct {v4, v5, v8, v7}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    new-instance v5, Lcom/aide/uidesigner/N$b;

    const-string v7, "LayoutSize"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    invoke-direct {v5, v7, v10, v9}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    new-instance v7, Lcom/aide/uidesigner/N$b;

    const-string v9, "Size"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    invoke-direct {v7, v9, v12, v11}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    new-instance v9, Lcom/aide/uidesigner/N$b;

    const-string v11, "FloatSize"

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x4

    invoke-direct {v9, v11, v14, v13}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    new-instance v11, Lcom/aide/uidesigner/N$b;

    const-string v13, "TextSize"

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x5

    invoke-direct {v11, v13, v1, v15}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcom/aide/uidesigner/N$b;->Zo:Lcom/aide/uidesigner/N$b;

    new-instance v13, Lcom/aide/uidesigner/N$b;

    const-string v15, "Text"

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x6

    invoke-direct {v13, v15, v3, v2}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    new-instance v2, Lcom/aide/uidesigner/N$b;

    const-string v15, "Float"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-direct {v2, v15, v1, v3}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    new-instance v3, Lcom/aide/uidesigner/N$b;

    const-string v15, "Int"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x8

    invoke-direct {v3, v15, v14, v1}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    new-instance v1, Lcom/aide/uidesigner/N$b;

    const-string v15, "Bool"

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x9

    invoke-direct {v1, v15, v12, v14}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    new-instance v14, Lcom/aide/uidesigner/N$b;

    const-string v15, "ID"

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v10, 0xa

    invoke-direct {v14, v15, v10, v12}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    new-instance v12, Lcom/aide/uidesigner/N$b;

    const-string v15, "Color"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    invoke-direct {v12, v15, v8, v10}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    new-instance v10, Lcom/aide/uidesigner/N$b;

    const-string v15, "Drawable"

    const-class v8, Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xc

    invoke-direct {v10, v15, v6, v8}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    new-instance v8, Lcom/aide/uidesigner/N$b;

    const-string v15, "DrawableResource"

    const-class v6, Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v10

    const/16 v10, 0xd

    invoke-direct {v8, v15, v10, v6}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    new-instance v6, Lcom/aide/uidesigner/N$b;

    const-string v15, "TextAppearance"

    const-class v10, Ljava/lang/String;

    move-object/from16 v17, v8

    const/16 v8, 0xe

    invoke-direct {v6, v15, v8, v10}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/aide/uidesigner/N$b;->Ws:Lcom/aide/uidesigner/N$b;

    new-instance v10, Lcom/aide/uidesigner/N$b;

    const-string v15, "Event"

    const-class v8, Ljava/lang/CharSequence;

    move-object/from16 v18, v6

    const/16 v6, 0xf

    invoke-direct {v10, v15, v6, v8}, Lcom/aide/uidesigner/N$b;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/aide/uidesigner/N$b;->QX:Lcom/aide/uidesigner/N$b;

    const/16 v8, 0x10

    new-array v8, v8, [Lcom/aide/uidesigner/N$b;

    const/4 v15, 0x0

    aput-object v0, v8, v15

    const/4 v0, 0x1

    aput-object v4, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v7, v8, v0

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v11, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    const/4 v0, 0x7

    aput-object v2, v8, v0

    const/16 v0, 0x8

    aput-object v3, v8, v0

    const/16 v0, 0x9

    aput-object v1, v8, v0

    const/16 v0, 0xa

    aput-object v14, v8, v0

    const/16 v0, 0xb

    aput-object v12, v8, v0

    const/16 v0, 0xc

    aput-object v16, v8, v0

    const/16 v0, 0xd

    aput-object v17, v8, v0

    const/16 v0, 0xe

    aput-object v18, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/aide/uidesigner/N$b;->XL:[Lcom/aide/uidesigner/N$b;
    :try_end_121
    .catchall {:try_start_6 .. :try_end_121} :catchall_122

    return-void

    :catchall_122
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v1, :cond_130

    const/4 v1, 0x0

    const-wide v2, 0x11ca34bb9f67620L

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_130
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x101b0c00b3d99d45L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x7c992cb66f5be70L  # -1.184784158887918E271

    const/4 v3, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/uidesigner/N$b;->Mr:Ljava/lang/Class;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x7c992cb66f5be70L  # -1.184784158887918E271

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/uidesigner/N$b;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x484a2511112c480L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/uidesigner/N$b;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/uidesigner/N$b;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/uidesigner/N$b;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x128591ddcd87beb0L  # -2.332477500459866E219

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/N$b;->aM:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/uidesigner/N$b;->XL:[Lcom/aide/uidesigner/N$b;

    invoke-virtual {v3}, [Lcom/aide/uidesigner/N$b;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/uidesigner/N$b;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/N$b;->j3:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
