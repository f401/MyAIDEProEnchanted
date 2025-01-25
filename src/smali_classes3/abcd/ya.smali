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
        "Ljava/util/Comparator<",
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
    .registers 5

    const-wide v0, -0x1ebed45cd48ce37L

    const-wide v2, -0x56f8d3f56b4ec030L

    const-class v4, Labcd/ya;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Labcd/ya;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xd2c20758e768d2bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ya;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x33d4d2220ef4f87L  # -9.329903795118626E292

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    if-ge v0, v1, :cond_1c

    move v2, v0

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1f
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_4d

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_54

    const/16 v9, 0x24

    if-ne v7, v9, :cond_32

    if-eq v7, v8, :cond_32

    return v5

    :cond_32
    if-ne v8, v9, :cond_37

    if-eq v7, v8, :cond_37

    return v6

    :cond_37
    const/16 v9, 0x2b

    if-ne v7, v9, :cond_3e

    if-eq v7, v8, :cond_3e

    return v5

    :cond_3e
    if-ne v8, v9, :cond_43

    if-eq v7, v8, :cond_43

    return v6

    :cond_43
    sub-int/2addr v7, v8

    if-gez v7, :cond_47

    return v5

    :cond_47
    if-lez v7, :cond_4a

    return v6

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_4d
    if-ge v0, v1, :cond_50

    return v5

    :cond_50
    if-le v0, v1, :cond_53

    return v6

    :cond_53
    return v3

    :catchall_54
    move-exception v0

    sget-boolean v1, Labcd/ya;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, -0x33d4d2220ef4f87L  # -9.329903795118626E292

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method
