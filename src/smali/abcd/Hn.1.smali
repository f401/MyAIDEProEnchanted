.class Labcd/Hn;
.super Ljava/lang/Object;


# direct methods
.method private static DW(Labcd/pn;)Labcd/Jr;
    .registers 3

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/um;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v1

    check-cast v1, Labcd/sm;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Labcd/Jr;->DW:Labcd/Jr;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object v0

    invoke-virtual {v1}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;

    move-result-object v0

    goto :goto_0
.end method

.method public static DW(Labcd/un;)Labcd/Jr;
    .registers 4

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v0

    invoke-static {v0}, Labcd/Hn;->j6(Labcd/pn;)Labcd/Jr;

    move-result-object v0

    invoke-static {p0}, Labcd/Hn;->j6(Labcd/un;)Labcd/Ss;

    move-result-object v1

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Labcd/Yo;->DW(Labcd/Ss;)Labcd/Hr;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static FH(Labcd/pn;)Labcd/Hr;
    .registers 2

    const-string v0, "Signature"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/wm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/wm;->j6()Labcd/Js;

    move-result-object v0

    invoke-static {v0}, Labcd/Yo;->j6(Labcd/Js;)Labcd/Hr;

    move-result-object v0

    goto :goto_0
.end method

.method public static FH(Labcd/un;)Labcd/Kr;
    .registers 4

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v1

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {v1, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/vm;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {v1, v2}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v1

    check-cast v1, Labcd/tm;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Labcd/Kr;->FH:Labcd/Kr;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Kr;->j6(Labcd/Kr;Labcd/Kr;)Labcd/Kr;

    move-result-object v0

    goto :goto_0
.end method

.method private static Hw(Labcd/pn;)Labcd/Hr;
    .registers 4

    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/mm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/mm;->j6()Labcd/Ks;

    move-result-object v1

    invoke-virtual {v0}, Labcd/mm;->DW()Labcd/Hs;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Labcd/Yo;->j6(Labcd/Ks;)Labcd/Hr;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Labcd/Gs;

    invoke-direct {v2, v1, v0}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    invoke-static {v2}, Labcd/Yo;->j6(Labcd/Gs;)Labcd/Hr;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Labcd/jn;)Labcd/Hr;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/jn;->J8()Labcd/Ks;

    move-result-object v1

    invoke-virtual {p0}, Labcd/jn;->EQ()Labcd/vn;

    move-result-object v3

    invoke-interface {v3}, Labcd/vn;->size()I

    move-result v4

    new-instance v5, Labcd/Hr;

    sget-object v2, Labcd/Ir;->Hw:Labcd/Ir;

    invoke-direct {v5, v1, v2}, Labcd/Hr;-><init>(Labcd/Ks;Labcd/Ir;)V

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Labcd/vn;->get(I)Labcd/un;

    move-result-object v6

    invoke-interface {v6}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v0

    const-string v7, "AnnotationDefault"

    invoke-interface {v0, v7}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/im;

    if-eqz v0, :cond_2

    new-instance v1, Labcd/Lr;

    invoke-interface {v6}, Labcd/tn;->FH()Labcd/Hs;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v6

    invoke-virtual {v0}, Labcd/im;->j6()Labcd/ms;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Labcd/Lr;-><init>(Labcd/Js;Labcd/ms;)V

    invoke-virtual {v5, v1}, Labcd/Hr;->j6(Labcd/Lr;)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v5}, Labcd/hu;->we()V

    invoke-static {v5}, Labcd/Yo;->j6(Labcd/Hr;)Labcd/Hr;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static j6(Labcd/Ks;Labcd/pn;Z)Labcd/Jr;
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/om;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/om;->j6()Labcd/Dm;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Xt;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move-object v1, v2

    :goto_1
    if-ge v4, v6, :cond_2

    invoke-virtual {v5, v4}, Labcd/Dm;->get(I)Labcd/Dm$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Dm$a;->DW()Labcd/Ks;

    move-result-object v8

    invoke-virtual {v8, p0}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    new-instance v2, Labcd/Jr;

    invoke-direct {v2}, Labcd/Jr;-><init>()V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Labcd/Dm$a;->FH()Labcd/Js;

    move-result-object v0

    invoke-virtual {v1}, Labcd/Dm$a;->j6()I

    move-result v5

    invoke-static {v0, v5}, Labcd/Yo;->j6(Labcd/Js;I)Labcd/Hr;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Jr;->j6(Labcd/Hr;)V

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object v0

    invoke-static {v0}, Labcd/Yo;->j6(Labcd/Ks;)Labcd/Hr;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Jr;->j6(Labcd/Hr;)V

    :cond_4
    if-eqz v4, :cond_7

    new-instance v5, Labcd/Ps;

    invoke-direct {v5, v4}, Labcd/Ps;-><init>(I)V

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_6

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qs;

    invoke-virtual {v5, v1, v0}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t come with an\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "associated EnclosingMethod attribute. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "This class was probably produced by a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "compiler that did not target the modern "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class file format. The recommended\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "solution is to recompile the class from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "source, using an up-to-date compiler\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "and without specifying any \"-target\" type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options. The consequence of ignoring\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "this warning is that reflective operations "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "on this class will incorrectly\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "indicate that it is *not* an inner class."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/ou;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/ou;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v5}, Labcd/hu;->we()V

    invoke-static {v5}, Labcd/Yo;->j6(Labcd/Ss;)Labcd/Hr;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/Jr;->j6(Labcd/Hr;)V

    :cond_7
    invoke-virtual {v2}, Labcd/hu;->we()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static j6(Labcd/jn;Labcd/In;)Labcd/Jr;
    .registers 8

    invoke-virtual {p0}, Labcd/jn;->J8()Labcd/Ks;

    move-result-object v2

    invoke-virtual {p0}, Labcd/jn;->FH()Labcd/pn;

    move-result-object v3

    invoke-static {v3}, Labcd/Hn;->j6(Labcd/pn;)Labcd/Jr;

    move-result-object v1

    invoke-static {v3}, Labcd/Hn;->Hw(Labcd/pn;)Labcd/Hr;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {v2, v3, v0}, Labcd/Hn;->j6(Labcd/Ks;Labcd/pn;Z)Labcd/Jr;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1, v0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;
    :try_end_0
    .catch Labcd/ou; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-static {v0, v4}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/jn;->j6()I

    move-result v1

    invoke-static {v1}, Labcd/Mr;->v5(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Labcd/Hn;->j6(Labcd/jn;)Labcd/Hr;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p1, Labcd/In;->gn:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "warning: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static j6(Labcd/pn;)Labcd/Jr;
    .registers 3

    invoke-static {p0}, Labcd/Hn;->DW(Labcd/pn;)Labcd/Jr;

    move-result-object v0

    invoke-static {p0}, Labcd/Hn;->FH(Labcd/pn;)Labcd/Hr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static j6(Labcd/un;)Labcd/Ss;
    .registers 3

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-interface {v0, v1}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/nm;

    if-nez v0, :cond_0

    sget-object v0, Labcd/Ps;->FH:Labcd/Ps;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/nm;->j6()Labcd/Ss;

    move-result-object v0

    goto :goto_0
.end method
