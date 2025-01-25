.class public abstract Labcd/Be$f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
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
.field public final FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Be$f;

    const-wide v1, 0x38aff2e3870a3493L  # 1.2017796945081056E-35

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x298cafbd2a38e990L  # -2.834913982858308E108

    :try_start_6
    sget-boolean v3, Labcd/Be$f;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/Be$f;->FH:I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Be$f;->DW:Z

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method
