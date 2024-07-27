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
        "Ljava/lang/Enum",
        "<",
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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x34a457225a3ec1cbL
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/ca$a;

    const-wide v2, 0x42e607986a0d7e80L    # 1.93775021353972E14

    const-wide v4, 0x42e607986a0d7e80L    # 1.93775021353972E14

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/ca$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x61ca6c6f8a68fb9L    # -1.371936129044136E279

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/ca$a;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ca$a;->j6:Labcd/ca$a;

    new-instance v0, Labcd/ca$a;

    const-string v1, "DOLLAR_READ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ca$a;->DW:Labcd/ca$a;

    new-instance v0, Labcd/ca$a;

    const-string v1, "DOLLAR_NUMBER_READ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ca$a;->FH:Labcd/ca$a;

    new-instance v0, Labcd/ca$a;

    const-string v1, "DOLLAR_PAREN_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Labcd/ca$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/ca$a;->Hw:Labcd/ca$a;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/ca$a;

    const/4 v1, 0x0

    sget-object v2, Labcd/ca$a;->j6:Labcd/ca$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Labcd/ca$a;->DW:Labcd/ca$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Labcd/ca$a;->FH:Labcd/ca$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Labcd/ca$a;->Hw:Labcd/ca$a;

    aput-object v2, v0, v1

    sput-object v0, Labcd/ca$a;->v5:[Labcd/ca$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ca$a;->VH:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x61ca6c6f8a68fb9L    # -1.371936129044136E279

    invoke-static {v0, v2, v3, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1a409525b8de123L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, 0x12050d30c02be3c0L    # 7.279755095631516E-222

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ca$a;->Zo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x12050d30c02be3c0L    # 7.279755095631516E-222

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ca$a;->VH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ca$a;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa9c28f959a0547cL
    .end annotation

    const-wide v4, 0x369b97d80f0c84bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ca$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x369b97d80f0c84bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/ca$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/ca$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ca$a;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/ca$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x19b7b6cdca409400L
    .end annotation

    const-wide v4, 0x20febb826ab7aea9L    # 9.388570578562744E-150

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ca$a;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20febb826ab7aea9L    # 9.388570578562744E-150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/ca$a;->v5:[Labcd/ca$a;

    invoke-virtual {v0}, [Labcd/ca$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/ca$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ca$a;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
