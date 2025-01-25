.class public Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
.super Ljava/lang/Object;
.source "EmailAddress.java"


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 15

    const/16 v12, 0x3e

    const/16 v11, 0x3c

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 54
    const/16 v0, 0x9

    if-le v6, v0, :cond_34

    .line 55
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_1d

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_34

    .line 56
    :cond_1d
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_2d

    add-int/lit8 v0, v6, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_34

    .line 57
    :cond_2d
    invoke-direct {p0, p1, v10}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    .line 113
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v5, v7

    move v4, v7

    move v2, v7

    move v3, v7

    move v0, v7

    move v1, v7

    .line 68
    :goto_3a
    if-ge v1, v6, :cond_70

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 70
    const/16 v9, 0x28

    if-ne v8, v9, :cond_4e

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    if-nez v4, :cond_4b

    .line 74
    add-int/lit8 v2, v1, 0x1

    move v3, v1

    .line 68
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 76
    :cond_4e
    const/16 v9, 0x29

    if-ne v8, v9, :cond_5a

    .line 77
    add-int/lit8 v5, v5, -0x1

    .line 78
    if-nez v3, :cond_4b

    .line 79
    add-int/lit8 v4, v1, 0x1

    move v0, v1

    .line 80
    goto :goto_4b

    .line 82
    :cond_5a
    if-nez v5, :cond_64

    if-ne v8, v11, :cond_64

    .line 83
    if-nez v4, :cond_61

    move v0, v1

    .line 86
    :cond_61
    add-int/lit8 v4, v1, 0x1

    goto :goto_4b

    .line 87
    :cond_64
    if-nez v5, :cond_4b

    if-ne v8, v12, :cond_4b

    .line 89
    add-int/lit8 v3, v6, -0x1

    if-eq v1, v3, :cond_9b

    .line 90
    add-int/lit8 v2, v1, 0x1

    move v3, v1

    goto :goto_4b

    .line 96
    :cond_70
    if-nez v3, :cond_73

    move v3, v6

    .line 100
    :cond_73
    if-nez v0, :cond_76

    move v0, v6

    .line 105
    :cond_76
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v10}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v6, :cond_33

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    goto :goto_33

    :cond_9b
    move v3, v1

    goto :goto_4b
.end method

.method private trim(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x22

    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    .line 125
    :cond_b
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x29

    if-eq v3, v5, :cond_3b

    .line 126
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3e

    if-ne v3, v5, :cond_21

    if-nez p2, :cond_3b

    .line 127
    :cond_21
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_33

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3b

    .line 128
    :cond_33
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_66

    .line 130
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    move v3, v4

    .line 132
    :goto_3e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_5c

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_50

    if-nez p2, :cond_5c

    .line 134
    :cond_50
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_5c

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v7, :cond_5f

    .line 137
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .line 139
    :cond_5f
    if-nez v3, :cond_b

    .line 140
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    move v3, v2

    goto :goto_3e
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    .line 171
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
