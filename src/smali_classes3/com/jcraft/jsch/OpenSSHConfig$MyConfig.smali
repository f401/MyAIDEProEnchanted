.class Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSSHConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfig"
.end annotation


# instance fields
.field private DW:Ljava/util/Vector;

.field final FH:Lcom/jcraft/jsch/OpenSSHConfig;

.field private j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V
    .registers 11

    iput-object p1, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->FH:Lcom/jcraft/jsch/OpenSSHConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    iput-object p2, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->j6:Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->j6(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->DW(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_90

    const/4 v0, 0x1

    :goto_2b
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->DW(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_36

    goto :goto_90

    :cond_36
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->DW(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[ \t]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_48
    array-length v5, v2

    if-lt v4, v5, :cond_4e

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4e
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_67

    :cond_66
    const/4 v6, 0x0

    :goto_67
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, p2}, Lcom/jcraft/jsch/Util;->DW([B[B)Z

    move-result v5

    if-eqz v5, :cond_74

    if-nez v6, :cond_8d

    goto :goto_76

    :cond_74
    if-eqz v6, :cond_8d

    :goto_76
    iget-object v5, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->j6(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v6

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->DW(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_90
    :goto_90
    return-void
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->j6()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->j6()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_20

    goto :goto_43

    :cond_20
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_30

    goto :goto_41

    :cond_30
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v6, v5, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v1, 0x1

    aget-object v1, v5, v1

    :goto_41
    if-eqz v1, :cond_44

    :goto_43
    return-object v1

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_29
.end method

.method private FH(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_19

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_19
    iget-object v3, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2b
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_44

    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_22
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    const-string v0, "User"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    const-string v0, "Hostname"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "compression.s2c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "compression.c2s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_28

    :cond_25
    const-string p1, "zlib@openssh.com,zlib,none"

    return-object p1

    :cond_28
    :goto_28
    const-string p1, "none,zlib@openssh.com,zlib"

    return-object p1
.end method

.method public j6()I
    .registers 2

    const-string v0, "Port"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public j6(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->FH(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
