.class public Lcom/dropbox/client2/android/AuthActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/android/AuthActivity$a;
    }
.end annotation


# static fields
.field private static DW:Lcom/dropbox/client2/android/AuthActivity$a; = null

.field private static final FH:Ljava/lang/Object;

.field public static Hw:Landroid/content/Intent; = null

.field private static VH:Ljava/lang/String; = null

.field private static Zo:Ljava/lang/String; = null

.field private static gn:Ljava/lang/String; = null

.field private static final j6:Ljava/lang/String; = "com.dropbox.client2.android.AuthActivity"

.field private static final u7:[Ljava/lang/String;

.field private static v5:Ljava/lang/String;


# instance fields
.field private EQ:Ljava/lang/String;

.field private J0:Ljava/lang/String;

.field private J8:Ljava/lang/String;

.field private tp:Ljava/lang/String;

.field private we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/dropbox/client2/android/b;

    invoke-direct {v0}, Lcom/dropbox/client2/android/b;-><init>()V

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->DW:Lcom/dropbox/client2/android/AuthActivity$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->FH:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    const-string v0, "www.dropbox.com"

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->VH:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->u7:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    return-void
.end method

.method private DW()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->EQ:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_38

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->EQ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->EQ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v4, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    const-string v0, "%1$040X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private DW(Landroid/content/Intent;)Z
    .registers 12

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_13

    goto :goto_46

    :cond_13
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    :try_start_1a
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_24} :catch_45

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_46

    aget-object v4, p1, v2

    sget-object v5, Lcom/dropbox/client2/android/AuthActivity;->u7:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v6, :cond_42

    aget-object v8, v5, v7

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    return v3

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :catch_45
    move-exception p1

    :cond_46
    :goto_46
    return v1
.end method

.method private static FH()Ljava/security/SecureRandom;
    .registers 1

    invoke-static {}, Lcom/dropbox/client2/android/AuthActivity;->Hw()Lcom/dropbox/client2/android/AuthActivity$a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/dropbox/client2/android/AuthActivity$a;->j6()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static Hw()Lcom/dropbox/client2/android/AuthActivity$a;
    .registers 2

    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->DW:Lcom/dropbox/client2/android/AuthActivity$a;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private j6()Ljava/lang/String;
    .registers 8

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-static {}, Lcom/dropbox/client2/android/AuthActivity;->FH()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/client2/android/AuthActivity;->EQ:Ljava/lang/String;

    if-nez v3, :cond_19

    const-string v3, "oauth2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v0, :cond_36

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Landroid/content/Intent;)V
    .registers 2

    sput-object p1, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->DW()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/client2/android/AuthActivity;->J0:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/dropbox/client2/android/AuthActivity;->we:Ljava/lang/String;

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "locale"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const-string v8, "k"

    aput-object v8, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "s"

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v2, v6, v0

    const/4 v0, 0x6

    const-string v1, "api"

    aput-object v1, v6, v0

    const/4 v0, 0x7

    aput-object v3, v6, v0

    const/16 v0, 0x8

    const-string v1, "state"

    aput-object v1, v6, v0

    const/16 v0, 0x9

    aput-object p1, v6, v0

    const-string p1, "/connect"

    invoke-static {v5, v7, p1, v6}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v4, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/dropbox/client2/android/AuthActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p0, Lcom/dropbox/client2/android/AuthActivity;->v5:Ljava/lang/String;

    sput-object p1, Lcom/dropbox/client2/android/AuthActivity;->Zo:Ljava/lang/String;

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const-string p2, "www.dropbox.com"

    :goto_9
    sput-object p2, Lcom/dropbox/client2/android/AuthActivity;->VH:Ljava/lang/String;

    sput-object p3, Lcom/dropbox/client2/android/AuthActivity;->gn:Ljava/lang/String;

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/connect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/dropbox/client2/android/AuthActivity;

    if-eqz v0, :cond_f8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_92

    if-eqz p2, :cond_71

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "Security alert"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p0, "Another app on your phone may be trying to pose as the app you are currently using. The malicious app can\'t access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com."

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/dropbox/client2/android/c;

    invoke-direct {p0}, Lcom/dropbox/client2/android/c;-><init>()V

    const-string p2, "OK"

    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_91

    :cond_71
    sget-object p0, Lcom/dropbox/client2/android/AuthActivity;->j6:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There are multiple apps registered for the AuthActivity URI scheme ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ").  Another app may be trying to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " impersonate this app, so authentication will be disabled."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    return v3

    :cond_92
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    if-eqz p2, :cond_ad

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ad

    return v2

    :cond_ad
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "There must be a "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " within your app\'s package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "registered for your URI scheme ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "). However, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "it appears that an activity in a different package is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "registered for that scheme instead. If you have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "multiple apps that all want to use the same access"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "token pair, designate one of them to do "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "authentication and have the other apps launch it "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "and then retrieve the token pair from it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "URI scheme in your app\'s manifest is not set up correctly. You should have a "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with the "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "scheme: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_18

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->v5:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->tp:Ljava/lang/String;

    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->Zo:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->EQ:Ljava/lang/String;

    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->VH:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->we:Ljava/lang/String;

    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->gn:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->J0:Ljava/lang/String;

    goto :goto_20

    :cond_18
    const-string v1, "SIS_KEY_AUTH_STATE_NONCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    :goto_20
    invoke-static {v0, v0}, Lcom/dropbox/client2/android/AuthActivity;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 11

    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->j6(Landroid/content/Intent;)V

    return-void

    :cond_c
    const-string v0, "ACCESS_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "UID"

    const-string v4, "ACCESS_SECRET"

    if-eqz v2, :cond_2b

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AUTH_STATE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :cond_2b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_63

    const-string v2, "/connect"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    :try_start_3d
    const-string v2, "oauth_token"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_43
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3d .. :try_end_43} :catch_5d

    :try_start_43
    const-string v5, "oauth_token_secret"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_43 .. :try_end_49} :catch_5b

    :try_start_49
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_49 .. :try_end_4f} :catch_58

    :try_start_4f
    const-string v7, "state"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_67

    :catch_56
    move-exception p1

    goto :goto_61

    :catch_58
    move-exception p1

    move-object v6, v1

    goto :goto_61

    :catch_5b
    move-exception p1

    goto :goto_5f

    :catch_5d
    move-exception p1

    move-object v2, v1

    :goto_5f
    move-object v5, v1

    move-object v6, v5

    :goto_61
    move-object p1, v1

    goto :goto_67

    :cond_63
    move-object p1, v1

    move-object v2, p1

    move-object v5, v2

    move-object v6, v5

    :goto_67
    if-eqz v2, :cond_a3

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    if-eqz v5, :cond_79

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    :cond_79
    if-eqz v6, :cond_a3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    if-eqz p1, :cond_a3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a3

    iget-object v7, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->j6(Landroid/content/Intent;)V

    return-void

    :cond_95
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a3
    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->j6(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->tp:Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_62

    :cond_14
    sput-object v1, Lcom/dropbox/client2/android/AuthActivity;->Hw:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->j6()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.dropbox.android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CONSUMER_KEY"

    iget-object v3, p0, Lcom/dropbox/client2/android/AuthActivity;->tp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CONSUMER_SIG"

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CALLING_PACKAGE"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CALLING_CLASS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "AUTH_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->DW(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5f

    :cond_5c
    invoke-direct {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->j6(Ljava/lang/String;)V

    :goto_5f
    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    return-void

    :cond_62
    :goto_62
    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->j6(Landroid/content/Intent;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->J8:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
