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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3501dcc1ef84940L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/engine/SourceEntity$a;

    const-wide v2, 0x428f0573bc3af564L    # 4.263534626654674E12

    const-wide v4, 0x428f0573bc3af564L    # 4.263534626654674E12

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/SourceEntity$a;->aM:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2dea5e6093b76acdL    # -2.6894418613963353E87

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Method"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Field"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Property"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Event"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->Hw:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Class"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->Zo:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Package"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Variable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->gn:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Region"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->u7:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Comment"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->tp:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Language"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->EQ:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Parameter"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->we:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Keyword"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->J0:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "UnknownIdentifier"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->J8:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "Constructor"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->Ws:Lcom/aide/engine/SourceEntity$a;

    new-instance v0, Lcom/aide/engine/SourceEntity$a;

    const-string v1, "File"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/SourceEntity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/aide/engine/SourceEntity$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->FH:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Hw:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Zo:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->gn:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->u7:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->tp:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->EQ:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->we:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->J0:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->J8:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->Ws:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/engine/SourceEntity$a;->XL:[Lcom/aide/engine/SourceEntity$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x2dea5e6093b76acdL    # -2.6894418613963353E87

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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
    .registers 7

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/engine/SourceEntity$a;
    .registers 6

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SourceEntity$a;->j3:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
