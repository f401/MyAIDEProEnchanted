.class final enum Labcd/ca$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/ca$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/ca$a;
    .annotation runtime Labcd/ru;
        field = 0x124b9f0f099a503cL
    .end annotation
.end field

.field public static final enum FH:Labcd/ca$a;
    .annotation runtime Labcd/ru;
        field = 0x50188cd8d8af9514L
    .end annotation
.end field

.field public static final enum Hw:Labcd/ca$a;
    .annotation runtime Labcd/ru;
        field = 0x385368c2ba94c4fL
    .end annotation
.end field

.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Labcd/ca$a;
    .annotation runtime Labcd/ru;
        field = -0x11bf1cad3d6cd1fdL
    .end annotation
.end field

.field private static final v5:[Labcd/ca$a;


# direct methods
.method static constructor <clinit>()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x34a457225a3ec1cbL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x61ca6c6f8a68fb9L  # -1.371936129044136E279

    :try_start_6
    const-class v3, Labcd/ca$a;

    const-wide v4, 0x42e607986a0d7e80L  # 1.93775021353972E14

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/ca$a;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/ca$a;

    const-string v4, "START"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/ca$a;->j6:Labcd/ca$a;

    new-instance v4, Labcd/ca$a;

    const-string v6, "DOLLAR_READ"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/ca$a;->DW:Labcd/ca$a;

    new-instance v6, Labcd/ca$a;

    const-string v8, "DOLLAR_NUMBER_READ"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/ca$a;->FH:Labcd/ca$a;

    new-instance v8, Labcd/ca$a;

    const-string v10, "DOLLAR_PAREN_READ"

    const/4 v11, 0x3

    invoke-direct {v8, v10, v11}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/ca$a;->Hw:Labcd/ca$a;

    const/4 v10, 0x4

    new-array v10, v10, [Labcd/ca$a;

    aput-object v3, v10, v5

    aput-object v4, v10, v7

    aput-object v6, v10, v9

    aput-object v8, v10, v11

    sput-object v10, Labcd/ca$a;->v5:[Labcd/ca$a;
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v3

    sget-boolean v4, Labcd/ca$a;->VH:Z

    if-eqz v4, :cond_55

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1a409525b8de123L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ca$a;->Zo:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x12050d30c02be3c0L  # 7.279755095631516E-222

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Labcd/ca$a;->VH:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x12050d30c02be3c0L  # 7.279755095631516E-222

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ca$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa9c28f959a0547cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x369b97d80f0c84bL

    :try_start_6
    sget-boolean v3, Labcd/ca$a;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/ca$a;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/ca$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/ca$a;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/ca$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x19b7b6cdca409400L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x20febb826ab7aea9L  # 9.388570578562744E-150

    :try_start_6
    sget-boolean v3, Labcd/ca$a;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/ca$a;->v5:[Labcd/ca$a;

    invoke-virtual {v3}, [Labcd/ca$a;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/ca$a;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/ca$a;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
