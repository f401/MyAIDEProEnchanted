.class final Lcom/google/android/gms/internal/measurement/Qc;
.super Ljava/lang/Object;


# direct methods
.method static j6(Lcom/google/android/gms/internal/measurement/Wa;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    new-instance v2, Lcom/google/android/gms/internal/measurement/Rc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/Rc;-><init>(Lcom/google/android/gms/internal/measurement/Wa;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/Sc;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/Sc;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/Sc;->j6(I)B

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_3

    const/16 v4, 0x27

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    packed-switch v0, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    :goto_1
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const-string v0, "\\r"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v0, "\\f"

    goto :goto_3

    :pswitch_2
    const-string v0, "\\v"

    goto :goto_3

    :pswitch_3
    const-string v0, "\\n"

    goto :goto_3

    :pswitch_4
    const-string v0, "\\t"

    goto :goto_3

    :pswitch_5
    const-string v0, "\\b"

    goto :goto_3

    :pswitch_6
    const-string v0, "\\a"

    goto :goto_3

    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x30

    goto :goto_1

    :cond_1
    const-string v0, "\\\\"

    goto :goto_3

    :cond_2
    const-string v0, "\\\'"

    goto :goto_3

    :cond_3
    const-string v0, "\\\""

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
