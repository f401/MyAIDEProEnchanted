.class Labcd/ya;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/za;->DW(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Labcd/za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ya;

    const-wide v2, -0x1ebed45cd48ce37L

    const-wide v4, -0x56f8d3f56b4ec030L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/za;)V
    .registers 2

    iput-object p1, p0, Labcd/ya;->FH:Labcd/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Labcd/ya;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xd2c20758e768d2bL
    .end annotation

    const/16 v10, 0x2b

    const/16 v9, 0x24

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    :try_start_0
    sget-boolean v0, Labcd/ya;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33d4d2220ef4f87L    # -9.329903795118626E292

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x6

    if-ge v1, v2, :cond_1

    move v0, v1

    :goto_0
    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v7, v9, :cond_2

    if-eq v7, v8, :cond_2

    move v0, v3

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-ne v8, v9, :cond_3

    if-eq v7, v8, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    if-ne v7, v10, :cond_4

    if-eq v7, v8, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    if-ne v8, v10, :cond_5

    if-eq v7, v8, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    sub-int/2addr v7, v8

    if-gez v7, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    if-lez v7, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-ge v1, v2, :cond_9

    move v0, v3

    goto :goto_2

    :cond_9
    if-le v1, v2, :cond_a

    move v0, v4

    goto :goto_2

    :cond_a
    move v0, v5

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ya;->DW:Z

    if-eqz v0, :cond_b

    const-wide v2, -0x33d4d2220ef4f87L    # -9.329903795118626E292

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    throw v1
.end method
