.class final Labcd/Ge;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/He;->j6(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x6c9636dc95a891dL

    const-wide v2, 0x1672aebd8541a40L

    const-class v4, Labcd/Ge;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Labcd/Ge;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x93e5c4e8470b9cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ge;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x20f1a7a8769b9a23L  # -7.760259260845342E149

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1, p2}, Labcd/Fe;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/Ge;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x20f1a7a8769b9a23L  # -7.760259260845342E149

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
