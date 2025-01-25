.class public final enum Lcom/aide/engine/SourceEntity$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/SourceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/engine/SourceEntity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/engine/SourceEntity$a;

.field public static final enum EQ:Lcom/aide/engine/SourceEntity$a;

.field public static final enum FH:Lcom/aide/engine/SourceEntity$a;

.field public static final enum Hw:Lcom/aide/engine/SourceEntity$a;

.field public static final enum J0:Lcom/aide/engine/SourceEntity$a;

.field public static final enum J8:Lcom/aide/engine/SourceEntity$a;

.field public static final enum QX:Lcom/aide/engine/SourceEntity$a;

.field public static final enum VH:Lcom/aide/engine/SourceEntity$a;

.field public static final enum Ws:Lcom/aide/engine/SourceEntity$a;

.field private static final XL:[Lcom/aide/engine/SourceEntity$a;

.field public static final enum Zo:Lcom/aide/engine/SourceEntity$a;

.field private static aM:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum gn:Lcom/aide/engine/SourceEntity$a;

.field private static j3:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/engine/SourceEntity$a;

.field public static final enum tp:Lcom/aide/engine/SourceEntity$a;

.field public static final enum u7:Lcom/aide/engine/SourceEntity$a;

.field public static final enum v5:Lcom/aide/engine/SourceEntity$a;

.field public static final enum we:Lcom/aide/engine/SourceEntity$a;


# direct methods
.method static constructor <clinit>()V
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x3501dcc1ef84940L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, -0x2dea5e6093b76acdL  # -2.6894418613963353E87

    :try_start_6
    const-class v0, Lcom/aide/engine/SourceEntity$a;

    const-wide v4, 0x428f0573bc3af564L  # 4.263534626654674E12

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v4, "Method"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    new-instance v4, Lcom/aide/engine/SourceEntity$a;

    const-string v6, "Field"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    new-instance v6, Lcom/aide/engine/SourceEntity$a;

    const-string v8, "Property"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    new-instance v8, Lcom/aide/engine/SourceEntity$a;

    const-string v10, "Event"

    const/4 v11, 0x3

    invoke-direct {v8, v10, v11}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/aide/engine/SourceEntity$a;->Hw:Lcom/aide/engine/SourceEntity$a;

    new-instance v10, Lcom/aide/engine/SourceEntity$a;

    const-string v12, "Class"

    const/4 v13, 0x4

    invoke-direct {v10, v12, v13}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    new-instance v12, Lcom/aide/engine/SourceEntity$a;

    const-string v14, "Type"

    const/4 v15, 0x5

    invoke-direct {v12, v14, v15}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/aide/engine/SourceEntity$a;->Zo:Lcom/aide/engine/SourceEntity$a;

    new-instance v14, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Package"

    const/4 v2, 0x6

    invoke-direct {v14, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    new-instance v1, Lcom/aide/engine/SourceEntity$a;

    const-string v3, "Variable"

    const/4 v2, 0x7

    invoke-direct {v1, v3, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aide/engine/SourceEntity$a;->gn:Lcom/aide/engine/SourceEntity$a;

    new-instance v3, Lcom/aide/engine/SourceEntity$a;

    const-string v2, "Region"

    const/16 v15, 0x8

    invoke-direct {v3, v2, v15}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/engine/SourceEntity$a;->u7:Lcom/aide/engine/SourceEntity$a;

    new-instance v2, Lcom/aide/engine/SourceEntity$a;

    const-string v15, "Comment"

    const/16 v13, 0x9

    invoke-direct {v2, v15, v13}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/aide/engine/SourceEntity$a;->tp:Lcom/aide/engine/SourceEntity$a;

    new-instance v15, Lcom/aide/engine/SourceEntity$a;

    const-string v13, "Language"

    const/16 v11, 0xa

    invoke-direct {v15, v13, v11}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/aide/engine/SourceEntity$a;->EQ:Lcom/aide/engine/SourceEntity$a;

    new-instance v13, Lcom/aide/engine/SourceEntity$a;

    const-string v11, "Parameter"

    const/16 v9, 0xb

    invoke-direct {v13, v11, v9}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/aide/engine/SourceEntity$a;->we:Lcom/aide/engine/SourceEntity$a;

    new-instance v11, Lcom/aide/engine/SourceEntity$a;

    const-string v9, "Keyword"

    const/16 v7, 0xc

    invoke-direct {v11, v9, v7}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/aide/engine/SourceEntity$a;->J0:Lcom/aide/engine/SourceEntity$a;

    new-instance v9, Lcom/aide/engine/SourceEntity$a;

    const-string v7, "UnknownIdentifier"

    const/16 v5, 0xd

    invoke-direct {v9, v7, v5}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/aide/engine/SourceEntity$a;->J8:Lcom/aide/engine/SourceEntity$a;

    new-instance v7, Lcom/aide/engine/SourceEntity$a;

    const-string v5, "Constructor"

    move-object/from16 v17, v9

    const/16 v9, 0xe

    invoke-direct {v7, v5, v9}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/aide/engine/SourceEntity$a;->Ws:Lcom/aide/engine/SourceEntity$a;

    new-instance v5, Lcom/aide/engine/SourceEntity$a;

    const-string v9, "File"

    move-object/from16 v18, v7

    const/16 v7, 0xf

    invoke-direct {v5, v9, v7}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    const/16 v9, 0x10

    new-array v9, v9, [Lcom/aide/engine/SourceEntity$a;

    const/16 v16, 0x0

    aput-object v0, v9, v16

    const/4 v0, 0x1

    aput-object v4, v9, v0

    const/4 v0, 0x2

    aput-object v6, v9, v0

    const/4 v0, 0x3

    aput-object v8, v9, v0

    const/4 v0, 0x4

    aput-object v10, v9, v0

    const/4 v0, 0x5

    aput-object v12, v9, v0

    const/4 v0, 0x6

    aput-object v14, v9, v0

    const/4 v0, 0x7

    aput-object v1, v9, v0

    const/16 v0, 0x8

    aput-object v3, v9, v0

    const/16 v0, 0x9

    aput-object v2, v9, v0

    const/16 v0, 0xa

    aput-object v15, v9, v0

    const/16 v0, 0xb

    aput-object v13, v9, v0

    const/16 v0, 0xc

    aput-object v11, v9, v0

    const/16 v0, 0xd

    aput-object v17, v9, v0

    const/16 v0, 0xe

    aput-object v18, v9, v0

    aput-object v5, v9, v7

    sput-object v9, Lcom/aide/engine/SourceEntity$a;->XL:[Lcom/aide/engine/SourceEntity$a;
    :try_end_100
    .catchall {:try_start_6 .. :try_end_100} :catchall_101

    return-void

    :catchall_101
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_10f

    const/4 v1, 0x0

    const-wide v2, -0x2dea5e6093b76acdL  # -2.6894418613963353E87

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_10f
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f9cbc5fa564bd0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd24aa664f2d1bbcL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0xd24aa664f2d1bbcL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/engine/SourceEntity$a;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x9b68978cedd949L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/engine/SourceEntity$a;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/engine/SourceEntity$a;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x1de555ff25beb00bL  # -3.8387000680405827E164

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/engine/SourceEntity$a;->XL:[Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v3}, [Lcom/aide/engine/SourceEntity$a;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/engine/SourceEntity$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
