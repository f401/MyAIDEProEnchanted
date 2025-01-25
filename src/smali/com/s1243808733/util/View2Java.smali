.class public Lcom/s1243808733/util/View2Java;
.super Ljava/lang/Object;
.source "View2Java.java"


# static fields
.field private static final checkedItems:[Z

.field private static final checkedItems_default:[Z

.field private static final items:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcheckedItems()[Z
    .registers 1

    sget-object v0, Lcom/s1243808733/util/View2Java;->checkedItems:[Z

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetitems()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/s1243808733/util/View2Java;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetSp()Landroid/content/SharedPreferences;
    .registers 1

    invoke-static {}, Lcom/s1243808733/util/View2Java;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 19
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "add field"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "add private"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "add m"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "root view"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "root Activity"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "type conversion"

    aput-object v3, v1, v2

    sput-object v1, Lcom/s1243808733/util/View2Java;->items:[Ljava/lang/String;

    .line 22
    new-array v1, v0, [Z

    fill-array-data v1, :array_30

    sput-object v1, Lcom/s1243808733/util/View2Java;->checkedItems_default:[Z

    .line 25
    new-array v0, v0, [Z

    sput-object v0, Lcom/s1243808733/util/View2Java;->checkedItems:[Z

    return-void

    nop

    :array_30
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 106
    new-instance v5, Ljava/io/StringReader;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 107
    :goto_26
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_ae

    .line 108
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-lez v8, :cond_a9

    .line 110
    :goto_3e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v6, v8, :cond_a6

    .line 111
    const-string v8, "android:id"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 112
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 113
    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 114
    const-string v9, ":id/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 115
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a3

    .line 117
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v10, ".R.id."

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 121
    :cond_7b
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_89

    .line 122
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    :cond_89
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a3

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "R.id."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a3
    :goto_a3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 131
    :cond_a6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 133
    :cond_a9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_26

    .line 137
    :cond_ae
    aget-boolean v4, p1, v6

    .line 138
    aget-boolean v5, p1, v7

    .line 139
    const/4 v8, 0x2

    aget-boolean v9, p1, v8

    .line 140
    const/4 v10, 0x3

    aget-boolean v10, p1, v10

    .line 141
    const/4 v11, 0x4

    aget-boolean v11, p1, v11

    .line 142
    const/4 v12, 0x5

    aget-boolean v12, p1, v12

    const/4 v13, 0x0

    .line 144
    :goto_bf
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_14a

    .line 145
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 146
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 148
    invoke-static {v14}, Lcom/s1243808733/util/View2Java;->getViewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 149
    invoke-static {v15, v9}, Lcom/s1243808733/util/View2Java;->getIdName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_f5

    if-eqz v5, :cond_e2

    .line 153
    const-string v6, "private "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_e2
    new-array v6, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v6, v16

    const/16 v17, 0x1

    aput-object v7, v6, v17

    const-string v8, "%1$s %2$s;\n"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_f5
    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v4, :cond_105

    .line 160
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10c

    :cond_105
    if-eqz v10, :cond_10c

    .line 164
    const-string v6, "this."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_10c
    :goto_10c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v6, " = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v12, :cond_125

    .line 170
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v7, v6

    const-string v6, "(%s)"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_125
    if-eqz v10, :cond_12d

    .line 173
    const-string v6, "view."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_134

    :cond_12d
    if-eqz v11, :cond_134

    .line 175
    const-string v6, "activity."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_134
    :goto_134
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    const-string v14, "findViewById(%s);\n"

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_bf

    .line 181
    :cond_14a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_176

    .line 183
    const-string v1, "private void initView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v10, :cond_162

    .line 185
    const-string v1, "View view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_169

    :cond_162
    if-eqz v11, :cond_169

    .line 187
    const-string v1, "Activity activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_169
    :goto_169
    const-string v1, ") {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_176
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v4, :cond_185

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIdName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 205
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_12

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_12
    if-nez p1, :cond_15

    return-object p0

    .line 211
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v2, :cond_22

    .line 212
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    .line 214
    :cond_22
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 217
    :goto_40
    const-string p1, "M"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_52

    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 220
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSp()Landroid/content/SharedPreferences;
    .registers 1

    .line 29
    const-string v0, "View2Java"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getViewName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 225
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    .line 227
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 33
    :goto_1
    sget-object v1, Lcom/s1243808733/util/View2Java;->items:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 34
    sget-object v2, Lcom/s1243808733/util/View2Java;->checkedItems:[Z

    invoke-static {}, Lcom/s1243808733/util/View2Java;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    aget-object v1, v1, v0

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/s1243808733/util/View2Java;->checkedItems_default:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "配置"

    goto :goto_33

    :cond_31
    const-string v2, "Configured"

    :goto_33
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/util/View2Java;->checkedItems:[Z

    new-instance v3, Lcom/s1243808733/util/View2Java$1;

    invoke-direct {v3}, Lcom/s1243808733/util/View2Java$1;-><init>()V

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "生成"

    goto :goto_4d

    :cond_4b
    const-string v1, "Generate"

    :goto_4d
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 50
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/util/View2Java$2;

    invoke-direct {v2, v0, p1, p0}, Lcom/s1243808733/util/View2Java$2;-><init>(Landroid/app/AlertDialog;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
