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

    move-result-object p0

    check-cast p0, Labcd/sm;

    if-nez v0, :cond_1c

    if-nez p0, :cond_17

    sget-object p0, Labcd/Jr;->DW:Labcd/Jr;

    return-object p0

    :cond_17
    invoke-virtual {p0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object p0

    return-object p0

    :cond_1c
    if-nez p0, :cond_23

    invoke-virtual {v0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-virtual {v0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object v0

    invoke-virtual {p0}, Labcd/zm;->j6()Labcd/Jr;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;

    move-result-object p0

    return-object p0
.end method

.method public static DW(Labcd/un;)Labcd/Jr;
    .registers 3

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v0

    invoke-static {v0}, Labcd/Hn;->j6(Labcd/pn;)Labcd/Jr;

    move-result-object v0

    invoke-static {p0}, Labcd/Hn;->j6(Labcd/un;)Labcd/Ss;

    move-result-object p0

    invoke-interface {p0}, Labcd/Ss;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {p0}, Labcd/Yo;->DW(Labcd/Ss;)Labcd/Hr;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private static FH(Labcd/pn;)Labcd/Hr;
    .registers 2

    const-string v0, "Signature"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p0

    check-cast p0, Labcd/wm;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Labcd/wm;->j6()Labcd/Js;

    move-result-object p0

    invoke-static {p0}, Labcd/Yo;->j6(Labcd/Js;)Labcd/Hr;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Labcd/un;)Labcd/Kr;
    .registers 3

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object p0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/vm;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {p0, v1}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p0

    check-cast p0, Labcd/tm;

    if-nez v0, :cond_20

    if-nez p0, :cond_1b

    sget-object p0, Labcd/Kr;->FH:Labcd/Kr;

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object p0

    return-object p0

    :cond_20
    if-nez p0, :cond_27

    invoke-virtual {v0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {v0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Cm;->j6()Labcd/Kr;

    move-result-object p0

    invoke-static {v0, p0}, Labcd/Kr;->j6(Labcd/Kr;Labcd/Kr;)Labcd/Kr;

    move-result-object p0

    return-object p0
.end method

.method private static Hw(Labcd/pn;)Labcd/Hr;
    .registers 3

    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p0

    check-cast p0, Labcd/mm;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Labcd/mm;->j6()Labcd/Ks;

    move-result-object v0

    invoke-virtual {p0}, Labcd/mm;->DW()Labcd/Hs;

    move-result-object p0

    if-nez p0, :cond_1b

    invoke-static {v0}, Labcd/Yo;->j6(Labcd/Ks;)Labcd/Hr;

    move-result-object p0

    return-object p0

    :cond_1b
    new-instance v1, Labcd/Gs;

    invoke-direct {v1, v0, p0}, Labcd/Gs;-><init>(Labcd/Ks;Labcd/Hs;)V

    invoke-static {v1}, Labcd/Yo;->j6(Labcd/Gs;)Labcd/Hr;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/jn;)Labcd/Hr;
    .registers 8

    invoke-virtual {p0}, Labcd/jn;->J8()Labcd/Ks;

    move-result-object v0

    invoke-virtual {p0}, Labcd/jn;->EQ()Labcd/vn;

    move-result-object p0

    invoke-interface {p0}, Labcd/vn;->size()I

    move-result v1

    new-instance v2, Labcd/Hr;

    sget-object v3, Labcd/Ir;->Hw:Labcd/Ir;

    invoke-direct {v2, v0, v3}, Labcd/Hr;-><init>(Labcd/Ks;Labcd/Ir;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v0, v1, :cond_41

    invoke-interface {p0, v0}, Labcd/vn;->get(I)Labcd/un;

    move-result-object v4

    invoke-interface {v4}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object v5

    const-string v6, "AnnotationDefault"

    invoke-interface {v5, v6}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v5

    check-cast v5, Labcd/im;

    if-eqz v5, :cond_3e

    new-instance v3, Labcd/Lr;

    invoke-interface {v4}, Labcd/tn;->FH()Labcd/Hs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v4

    invoke-virtual {v5}, Labcd/im;->j6()Labcd/ms;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Labcd/Lr;-><init>(Labcd/Js;Labcd/ms;)V

    invoke-virtual {v2, v3}, Labcd/Hr;->j6(Labcd/Lr;)V

    const/4 v3, 0x1

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_41
    if-nez v3, :cond_45

    const/4 p0, 0x0

    return-object p0

    :cond_45
    invoke-virtual {v2}, Labcd/hu;->we()V

    invoke-static {v2}, Labcd/Yo;->j6(Labcd/Hr;)Labcd/Hr;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/Ks;Labcd/pn;Z)Labcd/Jr;
    .registers 12

    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p1

    check-cast p1, Labcd/om;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p1}, Labcd/om;->j6()Labcd/Dm;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v1, :cond_42

    invoke-virtual {p1, v4}, Labcd/Dm;->get(I)Labcd/Dm$a;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Dm$a;->DW()Labcd/Ks;

    move-result-object v7

    invoke-virtual {v7, p0}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object v5, v6

    goto :goto_3f

    :cond_2e
    invoke-virtual {v6}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object v6

    invoke-virtual {p0, v6}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v7}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez v5, :cond_4b

    if-nez p1, :cond_4b

    return-object v0

    :cond_4b
    new-instance v0, Labcd/Jr;

    invoke-direct {v0}, Labcd/Jr;-><init>()V

    if-eqz v5, :cond_cc

    invoke-virtual {v5}, Labcd/Dm$a;->FH()Labcd/Js;

    move-result-object v1

    invoke-virtual {v5}, Labcd/Dm$a;->j6()I

    move-result v4

    invoke-static {v1, v4}, Labcd/Yo;->j6(Labcd/Js;I)Labcd/Hr;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Jr;->j6(Labcd/Hr;)V

    if-eqz p2, :cond_cc

    invoke-virtual {v5}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object p2

    if-eqz p2, :cond_75

    invoke-virtual {v5}, Labcd/Dm$a;->Hw()Labcd/Ks;

    move-result-object p0

    invoke-static {p0}, Labcd/Yo;->j6(Labcd/Ks;)Labcd/Hr;

    move-result-object p0

    invoke-virtual {v0, p0}, Labcd/Jr;->j6(Labcd/Hr;)V

    goto :goto_cc

    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") that doesn\'t come with an\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "associated EnclosingMethod attribute. "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "This class was probably produced by a\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "compiler that did not target the modern "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class file format. The recommended\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "solution is to recompile the class from "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "source, using an up-to-date compiler\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "and without specifying any \"-target\" type "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "options. The consequence of ignoring\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "this warning is that reflective operations "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "on this class will incorrectly\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "indicate that it is *not* an inner class."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/ou;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/ou;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cc
    :goto_cc
    if-eqz p1, :cond_eb

    new-instance p0, Labcd/Ps;

    invoke-direct {p0, p1}, Labcd/Ps;-><init>(I)V

    :goto_d3
    if-ge v3, p1, :cond_e1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/Qs;

    invoke-virtual {p0, v3, p2}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    :cond_e1
    invoke-virtual {p0}, Labcd/hu;->we()V

    invoke-static {p0}, Labcd/Yo;->j6(Labcd/Ss;)Labcd/Hr;

    move-result-object p0

    invoke-virtual {v0, p0}, Labcd/Jr;->j6(Labcd/Hr;)V

    :cond_eb
    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
.end method

.method public static j6(Labcd/jn;Labcd/In;)Labcd/Jr;
    .registers 7

    invoke-virtual {p0}, Labcd/jn;->J8()Labcd/Ks;

    move-result-object v0

    invoke-virtual {p0}, Labcd/jn;->FH()Labcd/pn;

    move-result-object v1

    invoke-static {v1}, Labcd/Hn;->j6(Labcd/pn;)Labcd/Jr;

    move-result-object v2

    invoke-static {v1}, Labcd/Hn;->Hw(Labcd/pn;)Labcd/Hr;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    :try_start_15
    invoke-static {v0, v1, v4}, Labcd/Hn;->j6(Labcd/Ks;Labcd/pn;Z)Labcd/Jr;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-static {v2, v0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;

    move-result-object v2
    :try_end_1f
    .catch Labcd/ou; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception v0

    iget-object p1, p1, Labcd/In;->gn:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    if-eqz v3, :cond_41

    invoke-static {v2, v3}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v2

    :cond_41
    invoke-virtual {p0}, Labcd/jn;->j6()I

    move-result p1

    invoke-static {p1}, Labcd/Mr;->v5(I)Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-static {p0}, Labcd/Hn;->j6(Labcd/jn;)Labcd/Hr;

    move-result-object p0

    if-eqz p0, :cond_55

    invoke-static {v2, p0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v2

    :cond_55
    return-object v2
.end method

.method public static j6(Labcd/pn;)Labcd/Jr;
    .registers 2

    invoke-static {p0}, Labcd/Hn;->DW(Labcd/pn;)Labcd/Jr;

    move-result-object v0

    invoke-static {p0}, Labcd/Hn;->FH(Labcd/pn;)Labcd/Hr;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {v0, p0}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Hr;)Labcd/Jr;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static j6(Labcd/un;)Labcd/Ss;
    .registers 2

    invoke-interface {p0}, Labcd/tn;->getAttributes()Labcd/pn;

    move-result-object p0

    const-string v0, "Exceptions"

    invoke-interface {p0, v0}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object p0

    check-cast p0, Labcd/nm;

    if-nez p0, :cond_11

    sget-object p0, Labcd/Ps;->FH:Labcd/Ps;

    return-object p0

    :cond_11
    invoke-virtual {p0}, Labcd/nm;->j6()Labcd/Ss;

    move-result-object p0

    return-object p0
.end method
