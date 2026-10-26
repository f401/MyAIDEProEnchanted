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
        "Ljava/lang/Enum",
        "<",
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
    .locals 20
    .annotation runtime Labcd/su;
        method = 0x3501dcc1ef84940L
    .end annotation

    :try_start_0
    const-class v2, Lcom/aide/engine/SourceEntity$a;

    const-wide v4, 0x428f0573bc3af564L    # 4.263534626654674E12

    const-wide v6, 0x428f0573bc3af564L    # 4.263534626654674E12

    invoke-static {v2, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v2, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x2dea5e6093b76acdL    # -2.6894418613963353E87

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/aide/engine/SourceEntity$a;

    const-string v3, "Method"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    new-instance v3, Lcom/aide/engine/SourceEntity$a;

    const-string v4, "Field"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    new-instance v4, Lcom/aide/engine/SourceEntity$a;

    const-string v5, "Property"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    new-instance v5, Lcom/aide/engine/SourceEntity$a;

    const-string v6, "Event"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aide/engine/SourceEntity$a;->Hw:Lcom/aide/engine/SourceEntity$a;

    new-instance v6, Lcom/aide/engine/SourceEntity$a;

    const-string v7, "Class"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    new-instance v7, Lcom/aide/engine/SourceEntity$a;

    const-string v8, "Type"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/aide/engine/SourceEntity$a;->Zo:Lcom/aide/engine/SourceEntity$a;

    new-instance v8, Lcom/aide/engine/SourceEntity$a;

    const-string v9, "Package"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    new-instance v9, Lcom/aide/engine/SourceEntity$a;

    const-string v10, "Variable"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/aide/engine/SourceEntity$a;->gn:Lcom/aide/engine/SourceEntity$a;

    new-instance v10, Lcom/aide/engine/SourceEntity$a;

    const-string v11, "Region"

    const/16 v12, 0x8

    invoke-direct {v10, v11, v12}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/aide/engine/SourceEntity$a;->u7:Lcom/aide/engine/SourceEntity$a;

    new-instance v11, Lcom/aide/engine/SourceEntity$a;

    const-string v12, "Comment"

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/aide/engine/SourceEntity$a;->tp:Lcom/aide/engine/SourceEntity$a;

    new-instance v12, Lcom/aide/engine/SourceEntity$a;

    const-string v13, "Language"

    const/16 v14, 0xa

    invoke-direct {v12, v13, v14}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/aide/engine/SourceEntity$a;->EQ:Lcom/aide/engine/SourceEntity$a;

    new-instance v13, Lcom/aide/engine/SourceEntity$a;

    const-string v14, "Parameter"

    const/16 v15, 0xb

    invoke-direct {v13, v14, v15}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/aide/engine/SourceEntity$a;->we:Lcom/aide/engine/SourceEntity$a;

    new-instance v14, Lcom/aide/engine/SourceEntity$a;

    const-string v15, "Keyword"

    const/16 v16, 0xc

    invoke-direct/range {v14 .. v16}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/aide/engine/SourceEntity$a;->J0:Lcom/aide/engine/SourceEntity$a;

    new-instance v15, Lcom/aide/engine/SourceEntity$a;

    const-string v16, "UnknownIdentifier"

    const/16 v17, 0xd

    invoke-direct/range {v15 .. v17}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/aide/engine/SourceEntity$a;->J8:Lcom/aide/engine/SourceEntity$a;

    new-instance v16, Lcom/aide/engine/SourceEntity$a;

    const-string v17, "Constructor"

    const/16 v18, 0xe

    invoke-direct/range {v16 .. v18}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v16, Lcom/aide/engine/SourceEntity$a;->Ws:Lcom/aide/engine/SourceEntity$a;

    new-instance v17, Lcom/aide/engine/SourceEntity$a;

    const-string v18, "File"

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v17, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [Lcom/aide/engine/SourceEntity$a;

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

    sput-object v18, Lcom/aide/engine/SourceEntity$a;->XL:[Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v3, :cond_1

    const-wide v4, -0x2dea5e6093b76acdL    # -2.6894418613963353E87

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v2
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Labcd/su;
        method = -0x2f9cbc5fa564bd0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0xd24aa664f2d1bbcL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0xd24aa664f2d1bbcL

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/engine/SourceEntity$a;
    .locals 6

    const-wide v4, -0x9b68978cedd949L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9b68978cedd949L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/engine/SourceEntity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/engine/SourceEntity$a;
    .locals 6

    const-wide v4, -0x1de555ff25beb00bL    # -3.8387000680405827E164

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1de555ff25beb00bL    # -3.8387000680405827E164

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/engine/SourceEntity$a;->XL:[Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v0}, [Lcom/aide/engine/SourceEntity$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
