.class public Lcom/a4455jkjh/ManifestActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final a:Ljava/util/List;

.field private static e:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private static k:[I


# instance fields
.field b:Lcom/a4455jkjh/e;

.field c:Z

.field d:Lcom/a4455jkjh/g;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/a4455jkjh/g;

.field private h:Lcom/a4455jkjh/a;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/a4455jkjh/ManifestActivity;->e:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_6} :catch_13

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/a4455jkjh/ManifestActivity;->a:Ljava/util/List;

    sget-object v0, Lcom/a4455jkjh/ManifestActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/a4455jkjh/f;->a(Ljava/util/List;)V

    return-void

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/a4455jkjh/ManifestActivity;->e:Lorg/xmlpull/v1/XmlPullParserFactory;

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    return-void
.end method

.method static synthetic b()[I
    .registers 3

    sget-object v0, Lcom/a4455jkjh/ManifestActivity;->k:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/a4455jkjh/e;->values()[Lcom/a4455jkjh/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/a4455jkjh/e;->b:Lcom/a4455jkjh/e;

    invoke-virtual {v1}, Lcom/a4455jkjh/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_33

    :goto_15
    :try_start_15
    sget-object v1, Lcom/a4455jkjh/e;->c:Lcom/a4455jkjh/e;

    invoke-virtual {v1}, Lcom/a4455jkjh/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_35

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/a4455jkjh/e;->a:Lcom/a4455jkjh/e;

    invoke-virtual {v1}, Lcom/a4455jkjh/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_37

    :goto_27
    :try_start_27
    sget-object v1, Lcom/a4455jkjh/e;->d:Lcom/a4455jkjh/e;

    invoke-virtual {v1}, Lcom/a4455jkjh/e;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_39

    :goto_30
    sput-object v0, Lcom/a4455jkjh/ManifestActivity;->k:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_15

    :catch_35
    move-exception v1

    goto :goto_1e

    :catch_37
    move-exception v1

    goto :goto_27

    :catch_39
    move-exception v1

    goto :goto_30
.end method

.method private c()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/a4455jkjh/ManifestActivity;->c:Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/a4455jkjh/ManifestActivity;->e:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Lcom/a4455jkjh/g;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/a4455jkjh/g;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/a4455jkjh/ManifestActivity;->g:Lcom/a4455jkjh/g;

    iget-object v3, p0, Lcom/a4455jkjh/ManifestActivity;->g:Lcom/a4455jkjh/g;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/a4455jkjh/g;->a(Lorg/xmlpull/v1/XmlPullParser;I)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->g:Lcom/a4455jkjh/g;

    const-string v3, "manifest"

    const-string v4, "uses-permission"

    invoke-virtual {v2, v0, v3, v4}, Lcom/a4455jkjh/g;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-virtual {v2, v0}, Lcom/a4455jkjh/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_5b
    if-lt v0, v4, :cond_7e

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "错误"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "确定"

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_45

    :cond_7e
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b
.end method

.method private d()V
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const-string v3, "输入搜索内容，如\'WRITE_EXTERNAL_STORAGE\'"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/a4455jkjh/b;

    iget-object v4, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-direct {v3, v4, p0}, Lcom/a4455jkjh/b;-><init>(Lcom/a4455jkjh/a;Lcom/a4455jkjh/ManifestActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "添加权限"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "确定"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "取消"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/a;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a4455jkjh/ManifestActivity;->g:Lcom/a4455jkjh/g;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, p2, v4}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const-string v0, "保存成功"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_4c
    if-lt v0, v4, :cond_70

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "错误"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "确定"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_36

    :cond_70
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    iget-boolean v0, v0, Lcom/a4455jkjh/a;->a:Z

    if-eqz v0, :cond_36

    sget-object v0, Lcom/a4455jkjh/e;->a:Lcom/a4455jkjh/e;

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "是否保存"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "权限已修改，是否保存？"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "保存"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "不保存"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "取消"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_35
    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->finish()V

    goto :goto_35
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/a4455jkjh/ManifestActivity;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    invoke-virtual {v1}, Lcom/a4455jkjh/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    :goto_f
    sget-object v0, Lcom/a4455jkjh/e;->d:Lcom/a4455jkjh/e;

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    return-void

    :pswitch_14  #0x1
    packed-switch p2, :pswitch_data_50

    :pswitch_17  #0xfffffffe
    goto :goto_f

    :pswitch_18  #0xfffffffd
    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->finish()V

    goto :goto_f

    :pswitch_1c  #0xffffffff
    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-virtual {v0}, Lcom/a4455jkjh/a;->b()V

    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->finish()V

    goto :goto_f

    :pswitch_25  #0x2
    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->d:Lcom/a4455jkjh/g;

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/a;->a(Lcom/a4455jkjh/g;)V

    goto :goto_f

    :pswitch_2d  #0x3
    packed-switch p2, :pswitch_data_5a

    goto :goto_f

    :pswitch_31  #0xfffffffd, 0xfffffffe
    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->finish()V

    goto :goto_f

    :pswitch_35  #0xffffffff
    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a4455jkjh/ManifestActivity;->c()V

    goto :goto_f

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_25  #00000002
        :pswitch_2d  #00000003
    .end packed-switch

    :pswitch_data_50
    .packed-switch -0x3
        :pswitch_18  #fffffffd
        :pswitch_17  #fffffffe
        :pswitch_1c  #ffffffff
    .end packed-switch

    :pswitch_data_5a
    .packed-switch -0x3
        :pswitch_31  #fffffffd
        :pswitch_31  #fffffffe
        :pswitch_35  #ffffffff
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/a4455jkjh/ManifestActivity;->e:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/a4455jkjh/e;->d:Lcom/a4455jkjh/e;

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    invoke-virtual {p0}, Lcom/a4455jkjh/ManifestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/a4455jkjh/a;

    invoke-direct {v1, p0}, Lcom/a4455jkjh/a;-><init>(Lcom/a4455jkjh/ManifestActivity;)V

    iput-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->f:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/a4455jkjh/ManifestActivity;->setContentView(Landroid/view/View;)V

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a4455jkjh/ManifestActivity;->c()V

    goto :goto_7

    :cond_3c
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->j:Landroid/widget/EditText;

    sget-object v0, Lcom/a4455jkjh/e;->c:Lcom/a4455jkjh/e;

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->j:Landroid/widget/EditText;

    const-string v1, "输入AndroidManifest.xml文件路径"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "输入路径"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "确定"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "取消"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "保存"

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const-string v1, "添加"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-virtual {v0, p3}, Lcom/a4455jkjh/a;->a(I)Lcom/a4455jkjh/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->d:Lcom/a4455jkjh/g;

    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->d:Lcom/a4455jkjh/g;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/a4455jkjh/e;->b:Lcom/a4455jkjh/e;

    iput-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->b:Lcom/a4455jkjh/e;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "删除权限"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "是否删除权限：\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a4455jkjh/ManifestActivity;->d:Lcom/a4455jkjh/g;

    invoke-virtual {v2}, Lcom/a4455jkjh/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "确定"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "取消"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :goto_7
    const/4 v0, 0x1

    return v0

    :pswitch_9  #0x0
    iget-object v0, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    invoke-virtual {v0}, Lcom/a4455jkjh/a;->b()V

    goto :goto_7

    :pswitch_f  #0x1
    invoke-direct {p0}, Lcom/a4455jkjh/ManifestActivity;->d()V

    goto :goto_7

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_f  #00000001
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/ManifestActivity;->h:Lcom/a4455jkjh/a;

    iget-boolean v1, v1, Lcom/a4455jkjh/a;->a:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method
