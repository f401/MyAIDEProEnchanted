.class final Lcom/google/android/gms/internal/measurement/Qc;
.super Ljava/lang/Object;


# direct methods
.method static j6(Lcom/google/android/gms/internal/measurement/Wa;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/Rc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Rc;-><init>(Lcom/google/android/gms/internal/measurement/Wa;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Sc;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/Sc;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/Sc;->j6(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x27

    if-eq v2, v3, :cond_69

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_66

    packed-switch v2, :pswitch_data_7a

    const/16 v4, 0x20

    if-lt v2, v4, :cond_46

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_46

    goto :goto_61

    :pswitch_31  #0xd
    const-string v2, "\\r"

    goto :goto_6e

    :pswitch_34  #0xc
    const-string v2, "\\f"

    goto :goto_6e

    :pswitch_37  #0xb
    const-string v2, "\\v"

    goto :goto_6e

    :pswitch_3a  #0xa
    const-string v2, "\\n"

    goto :goto_6e

    :pswitch_3d  #0x9
    const-string v2, "\\t"

    goto :goto_6e

    :pswitch_40  #0x8
    const-string v2, "\\b"

    goto :goto_6e

    :pswitch_43  #0x7
    const-string v2, "\\a"

    goto :goto_6e

    :cond_46
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    :goto_61
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_66
    const-string v2, "\\\\"

    goto :goto_6e

    :cond_69
    const-string v2, "\\\'"

    goto :goto_6e

    :cond_6c
    const-string v2, "\\\""

    :goto_6e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x7
        :pswitch_43  #00000007
        :pswitch_40  #00000008
        :pswitch_3d  #00000009
        :pswitch_3a  #0000000a
        :pswitch_37  #0000000b
        :pswitch_34  #0000000c
        :pswitch_31  #0000000d
    .end packed-switch
.end method
