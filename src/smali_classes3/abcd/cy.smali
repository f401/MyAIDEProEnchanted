.class final Labcd/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Labcd/by;

.field private final j6:Labcd/Yx;


# direct methods
.method constructor <init>(Labcd/by;Labcd/Yx;)V
    .registers 3

    iput-object p1, p0, Labcd/cy;->DW:Labcd/by;

    iput-object p2, p0, Labcd/cy;->j6:Labcd/Yx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Labcd/cy;->j6:Labcd/Yx;

    invoke-virtual {v0}, Labcd/Yx;->FH()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v0}, Labcd/by;->j6(Labcd/by;)Labcd/qy;

    move-result-object v0

    invoke-virtual {v0}, Labcd/qy;->Zo()Z

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v0}, Labcd/by;->DW(Labcd/by;)Labcd/Sx;

    move-result-object v0

    iget-object v1, p0, Labcd/cy;->j6:Labcd/Yx;

    invoke-interface {v0, v1}, Labcd/Sx;->j6(Labcd/Yx;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catch Labcd/Xx; {:try_start_12 .. :try_end_1e} :catch_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_28

    iget-object v1, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v1}, Labcd/by;->j6(Labcd/by;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Object;)V

    return-void

    :catch_28
    move-exception v0

    iget-object v1, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v1}, Labcd/by;->j6(Labcd/by;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    return-void

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v1}, Labcd/by;->j6(Labcd/by;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    return-void

    :cond_4c
    iget-object v1, p0, Labcd/cy;->DW:Labcd/by;

    invoke-static {v1}, Labcd/by;->j6(Labcd/by;)Labcd/qy;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    return-void
.end method
